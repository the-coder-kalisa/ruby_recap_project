#include <iostream>

using namespace std;



int main() {
string shows[] {"Teams", "Animals"};
cout << "==================WELCOME==================" << endl;
cout << "What would you like to guess?" << endl;
int selected;
int length = sizeof(shows) / sizeof(shows[0]);
for (int i = 0; i < length; i++) {
    cout << i + 1 << ". " << shows[i] << endl;
}
cin >> selected;
string choosed[2];
switch(selected) {
    case 1:
    choosed = {'Arsenal', 'Chelsea', 'Liverpool', 'Manchester United', 'Manchester City', 'Tottenham Hotspur',
                  'Everton', 'West Ham United', 'Leicester City', 'Aston Villa', 'Newcastle United', 'Crystal Palace', 'Southampton', 'Wolverhampton Wanderers', 'Burnley', 'Brighton & Hove Albion', 'Sheffield United', 'Norwich City', 'Watford', 'Bournemouth'};
    break;
    case 2:
    choosed = {'Lion', 'Tiger', 'Elephant', 'Human Being', 'Chicken', 'Hen', 'Horse', 'Leopard', 'Ostrish'};
    break;
    case 3:
    choosed = {'Davinch', 'Steven in forest', 'Hiring the mist', 'Inside'};
    break;
    case 4:
    choosed = {'Emmy', 'Charles', 'Gaks', 'Pogba', 'Bellamy'};
    break;
    case 5:
    choosed = {'Christiano', 'Messi', ''}
    break;
    default:
    exit(-1);
    break;
}
string choice = "kalisa";
string placeholder;
for (int i = 0; i < choice.length(); i++) {
    placeholder += "_";
}
cout << placeholder;
string guess;
int guess_count = 0;
int guess_limit = 3;
bool out_of_guesses = false;
while (guess != choice && !out_of_guesses) {
    if (guess_count < guess_limit) {
        if (guess_count >= 1) {
            cout << "Try again enter guess: ";
        } else {
            cout << "Enter guess: ";
        }
        cin >> guess;
    } else {
        out_of_guesses = true;
    }
}
if (out_of_guesses) {
    cout << "You lost";
} else {
    cout << "You won";
}
    return 0;
}