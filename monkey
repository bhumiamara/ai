initial_state(on_ground).
action(on_ground,push_box,box_under_banana).
action(box_under_banana,climb,on_box).
action(on_box,reach,banana_reached).
plan(state,[],state).
plan(state1,[Action|Rest],Goal):-
    action(state1,Action,state2),
    plan(state2,Rest,Goal).
