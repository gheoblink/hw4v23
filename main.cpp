#include <iostream>
#include <cstdlib>
#include <ctime>
#include <optional>

#include <omp.h>

using namespace std;
omp_lock_t lock;
short start1 = 0, start2 = 0, start3 = 0;

class MilitaryItem {
public:
    int cost;
    string name;

    MilitaryItem(int cost, string name) {
        this->cost = cost;
        this->name = name;
    }

    //empty constructor for array
    MilitaryItem() = default;
};

//method generate items on military base
void generateItems(int size, MilitaryItem base[]);

void Ivanov(int size, MilitaryItem militaryItem[], MilitaryItem placeNearBase[]);

void Petrov(int size, MilitaryItem placeNearBase[], MilitaryItem truck[]);

void Necheporchuk(int size, MilitaryItem truck[]);

int main() {
    int size;
    cout << "Enter number of items on the military base: ";
    cin >> size;
    cout << endl;
    //imitation of military base
    MilitaryItem *militaryBase = new MilitaryItem[size];
    //imitation of place between base and car (before putting to the car)
    MilitaryItem *placeNearBase = new MilitaryItem[size];
    //imitation or truck
    MilitaryItem *truck = new MilitaryItem[size];

    //generate a new array of items in military base
    generateItems(size, militaryBase);

    //show military base
    for (int i = 0; i < size; ++i) {
        cout << militaryBase[i].name << "\t";
        cout << militaryBase[i].cost << "$" << endl;
    }
    cout << endl;
#pragma omp parallel num_threads(4)
    {
        #pragma omp parallel sections
        {
#pragma omp section
            {
                Ivanov(size, militaryBase, placeNearBase);
            }
#pragma omp section
            {
                Petrov(size, placeNearBase, truck);
            }
#pragma omp section
            {
                Necheporchuk(size, truck);
            }
        }
    }

//    thread thIvanov(Ivanov, size, militaryBase, placeNearBase);
//    thread thPetrov(Petrov, size, placeNearBase, truck);
//    thread thNecheporchuk(Necheporchuk, size, truck);
//
//
//    thIvanov.join();
//    thPetrov.join();
//    thNecheporchuk.join();

    delete[]
            militaryBase;
    delete[]
            placeNearBase;
    delete[]
            truck;
}

void generateItems(int size, MilitaryItem base[]) {

    srand(time(NULL));
    string militaryNames[7] =
            {"MachineGun",
             "Uniform",
             "Grenade",
             "Pistol",
             "Armor",
             "BulletCartridge",
             "SniperRifle"};

    int militaryCosts[7] =
            {                   //(min - max)cost - price for every item is static
                    4000 - rand() % 2000,   //(2000 - 4000)$
                    1500 - rand() % 500,    //(1000 - 1500)$
                    500 - rand() % 200,     //( 300 -  500)$
                    2000 - rand() % 1000,   //(1000 - 2000)$
                    2500 - rand() % 1500,   //(1000 - 2500)$
                    800 - rand() % 200,     //( 600 -  800)$
                    7000 - rand() % 4000};  //(3000 - 7000)$

    int randomNumber;

    for (int i = 0; i < size; ++i) {
        randomNumber = rand() % 7;
        base[i] = MilitaryItem(militaryCosts[randomNumber], militaryNames[randomNumber]);
    }
}

void Ivanov(int size, MilitaryItem militaryItem[], MilitaryItem placeNearBase[]) {
    for (int i = 0; i < size; ++i) {
        placeNearBase[i] = militaryItem[i];
#pragma omp critical
        cout << "Ivanov took the " + placeNearBase[i].name + " from the military base.\n\n";
        militaryItem[i] = MilitaryItem(0, "Empty slot");
        start1++;
    }
}

void Petrov(int size, MilitaryItem placeNearBase[], MilitaryItem truck[]) {
    while (true) {
        for (int i = start2; i < start1; ++i) {
            ++start2;
            truck[i] = placeNearBase[i];
#pragma omp critical
            cout << "Petrov put a " + truck[i].name + " in the car.\n\n";
            placeNearBase[i] = MilitaryItem(0, "Empty slot");
        }
        if (start2 == size)
            break;
    }
}

void Necheporchuk(int size, MilitaryItem truck[]) {
    int sum = 0;
    while (true) {
        for (int i = start3; i < start2; ++i) {
            ++start3;
            sum += truck[i].cost;
#pragma omp critical
            cout << "Necheporchuk said: Oh, this " + truck[i].name + " costs " + to_string(truck[i].cost) +
                    "$.\nSum of prices of all military items I counted is " + to_string(sum) + "$\n\n";;
        }
        if (start3 == size)
            break;
    }
}