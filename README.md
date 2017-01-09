#README#

Update this !


Story 1
In order to use public transport
As a customer
I want money on my card
Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone


Desired Code
>> require "./lib/airport.rb"
=> true
>> airport = Airport.new
=> #<Airport:0x007fc643861c38>
>> plane = airport.plane_landed?
=> #<Plane:0x007fc643851590>
>> plane.confirm_landed?
=> "I've landed!"
airport.plane_take_off(plane)  		=> #<Plane:0x007fdf4b15adb0>
plane.confirm_not_in_airport			I’m not in the airport

IRB final test code:
> require "./lib/airport.rb"
=> true
>> airport = Airport.new
=> #<Airport:0x007fdf4b138198>
>> plane = airport.plane_landed?
=> #<Plane:0x007fdf4b15adb0>
>> plane.confirm_landed?
=> "I've landed!"
>> airport.plane_take_off(plane)
=> #<Plane:0x007fdf4b15adb0>
>> plane.confirm_not_in_airport?
=> "I'm not in the airport"




Story 2
In order to keep using public transport
As a customer
I want to add money to my card

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone


Story 3
In order to protect my money
As a customer
I don't want to put too much money on my card

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone



Story 4
In order to pay for my journey
As a customer
I need my fare deducted from my card

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone



Story 5
In order to get through the barriers
As a customer
I need to touch in and out

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone


Story 6
In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone


Story 7
In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone

Story 8
In order to pay for my journey
As a customer
I need to know where I've travelled from

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone



Story 9
In order to know where I have been
As a customer
I want to see to all my previous trips

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone



Story 10
In order to know how far I have travelled
As a customer
I want to know what zone a station is in

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone

Story 11
In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone


Story 12
In order to be charged the correct amount
As a customer
I need to have the correct fare calculated

Objects (Nouns)
Messages (Verbs)
State
Card
2 - top_up
3 - check_balance?
4 / 7 / 8 - pay_fare(deduct)

11 - apply_penalty_charge

6 - enough_to_pay?(single journey)

9 -journey_history

12 - correct_fare?
1 - current_balance
3 - balance_limit


Barrier
5 - touch_in
5 - touch_out
11 - fail_touch_in?
11 - fail_touch_out




Journey
7 - complete?

8 - calculate_fare?

10 - distance_travelled
4 - fare
8 - origin, 8 - destination


Station
10 - which_zone?
10 - zone
