#NoEnv
names := ["Aiden", "Alexis", "Amelia", "Andrew", "Aria", "Ava", "Brayden", "Brooklyn", "Caleb", "Cameron", "Carter", "Charlotte", "Chloe", "David", "Ethan", "Emily", "Emma", "Evelyn", "Gabriel", "Grace", "Hannah", "Harper", "Isabella", "Jacob", "Jayden", "Jordan", "Kaitlyn", "Katie", "Liam", "Lillian", "Logan", "Mia", "Nathan", "Noah", "Olivia", "Paige", "Peyton", "Riley", "Samantha", "Sofia", "Taylor", "William", "Wyatt", "Zachary", "Zoe"]

; Define the hotkey combination
!c::
    sleep 100
    ; Select a random name from the list
    Random,range,1,50
    random_name := names[range]

    ; Type the selected name
    Send, %random_name%
    return