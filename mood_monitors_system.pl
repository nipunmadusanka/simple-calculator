check:-

write('                                *** Welcome to the system that monitors your mood ***'),nl,
write('                                *** SUBMIT YOUR ANSWER Y = YES or N = NO ***'),nl,nl,nl,
write('J.M.N.M GUNASEKARA (SEU/IS/15/ICT/005)'),nl,
write('DEPARTMENT OF INFORMATION & COMMUNICATION TECHNOLOGY'),nl,
write('FACULTY OF TECHNOLOGY'),nl,
write('SOUTH EASTERN UNIVERSITY OF SRI LANKA'),nl,

theory(Affection),
write('I believe that the You have '),
write(Affection),
nl,
write('TAKE CARE!!! & STAY SAFE!!! '),
undo.

/*theory*/

theory(fear)   :- fear, !.
theory(fatigue)  :- fatigue, !.
theory(grief) :- grief, !.
theory(mental_breakdown):- mental_breakdown, !.
theory(feel_good_and_try_again).

/*Rules*/
fear :-
verify(unhappy),
verify(feeling_nervous),
verify(heart_rate_high),
verify(sweating),
verify(feeling_weak),
verify(trembling_muscles),
verify(fast_breathing),

write('* * * * * *'),
nl,
write('I recognized that you were afraid of something Go see your nearest friend right now and go and tell him everything you have on your mind If there is something you can not talk about with him, you should see a religious leader or a psychiatrist'),
nl,
write('* * * * * *'),
nl.

fatigue :-
verify(unhappy),
verify(angry),
verify(is_it_less_likely_to_focus_on_the_current_situation),
verify(short_term_memory_problems),
verify(slowed_reflexes_and_responses),
verify(headache),
verify(is_Decision_Making_Poor),
verify(loss_of_appetite),

write('* * * * * *'),
nl,
write('I understand that you have worked hard'),
nl,
write('It is very important for you to avoid this situation and relax your mind.'),
nl,
write('For that, I suggest engaging in the following activities.
'),
nl,
write('1: Get a good meal'),
nl,
write('2: Get enough sleep'),
nl,
write('3: Spend time relaxing outdoors'),
nl,
write('4: Relax with friends'),
nl,
write('5: Go on a leisure trip'),
nl,
write('* * * * * *'),
nl.

grief :-
verify(unhappy),
verify(angry),
verify(loss_appetite_or_excessive_appetite),
verify(you_may_also_feel_frustrated_and_worthless),
verify(do_you_feel_like_crying),
verify(feeling_helpless),
verify(it_is_difficult_to_sleep),
verify(shock_and_disbelief),

write('* * * * * *'),
nl,
write('I understand that you are sad because of something and you can avoid it Do what I suggest for that Your mental health is very important to you'),
nl,
write('1: Talk to your best person and free your mind'),
nl,
write('2: Spend time with friends and family'),
nl,
write('3: Find comfort in your faith'),
nl,
write('4: Add a bit of humor'),
nl,
write('5: Listen to music'),
nl,
write('6: Do your favorite hobby'),
nl,
write('7: Go on a fun trip'),
nl,
write('8: Talk to a therapist or grief counselor'),
nl,nl,
write('You have nothing to fear and there are many people to help you'),
nl,
write('* * * * * *'),
nl.

mental_breakdown :-
verify(unhappy),
verify(angry),
verify(is_it_less_likely_to_focus_on_the_current_situation),
verify(stay_away_from_friends_and_activities),
verify(significant_fatigue),
verify(separation_from_reality),
verify(problems_with_alcohol_or_drug_use),
verify(major_changes_in_eating_habits),
verify(sexual_desire_changes),
verify(suicidal_ideation),

write('* * * * * *'),
nl,
write('You should immediately refer to the following actions'),
nl,
write('First of all, do not worry about yourself You are a very important person'),
nl,
write('Call 911 or your local emergency number immediately'),
nl,
write('Contact your mental health professional'),
nl,
write('Talk to someone you love'),
nl,
write('* * * * * *'),
nl.

ask(Question) :-
write('Are you:'),
write(Question),
write('? '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

verify(S) :-
 (yes(S)
  ->
   true ;
 (no(S)
  ->
   fail ;
 ask(S))).
 
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.