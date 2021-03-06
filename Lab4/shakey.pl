% Shakey's actions (from Figure 1)
act(go(X, Y),                                         % action name
      [location(shakey, X), connected(X, Y), on(floor)],         % precondition
      [location(shakey, X)],                          % delete
      [location(shakey, Y)]                           % add
      ).
          
act(push(B, X, Y),                                         % action name
      [connected(X, Y), box(B), location(B, X), location(shakey, X), location(S, X), lightOn(S), on(floor)],        % precondition
      [location(B, X), location(shakey, X)],               % delete
      [location(B, Y), location(shakey, Y)]                % add
      ).
      
act(climbUp(B),                                                % action name
      [on(floor), box(B), location(B, X), location(shakey, X)],        % precondition
      [on(floor)],                                             % delete
      [on(B)]                                                  % add
      ).
      
act(climbDown(B),                                                % action name
      [on(B), box(B), location(B, X), location(shakey, X)],              % precondition
      [on(B)],                                                   % delete
      [on(floor)]                                                % add
      ).
      
act(turnOn(S),                                                     % action name
      [lightOff(S), switch(S), on(B), location(B, X), location(S, X)],        % precondition
      [lightOff(S)],                                               % delete
      [lightOn(S)]                                                 % add
      ).

act(turnOff(S),
      [lightOn(S), switch(S), on(B), location(B, X), location(S, X)],        % precondition
      [lightOn(S)],                                               % delete
      [lightOff(S)]                                               % add
      ).


          
% Goal
goal_state([
     %location(shakey, r1)
     lightOff(s1)
     %location(b2, r2)
]).

% Shakey's world
initial_state(
              [
              room(r1),
              room(r2),
              room(r3),
              room(r4),
              box(b1),
              box(b2),
              box(b3),
              box(b4),
              on(floor),
              switch(s1),
              switch(s2),
              switch(s3),
              switch(s4),
              robot(shakey),
              lightOn(s1),
              lightOff(s2),
              lightOff(s3),
              lightOn(s4),
              location(b1, r1),
              location(b2, r1),
              location(b3, r1),
              location(b4, r1),
              location(s1, r1),
              location(s2, r2),
              location(s3, r3),
              location(s4, r4),
              location(shakey, r3),
              connected(r1, r2),
              connected(r1, r3),
              connected(r1, r4),
              connected(r2, r1),
              connected(r2, r3),
              connected(r2, r4),
              connected(r3, r1),
              connected(r3, r2),
              connected(r3, r4),
              connected(r4, r1),
              connected(r4, r2),
              connected(r4, r3)
  ]
).


% Room1 : light on, box1, box2, box3, box4
% Room2 : light off
% Room3 : light off, Shakey is here
% Room4 : light on
% Corridor
          
