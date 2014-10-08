:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

:- http_handler(/, root_handler, []).
:- http_handler('/db', db, []).

root_handler(_):-
        format('Content-Type: text/html~n~n', []),
        findall(Fact, some_fact(Fact), Facts),
        atomic_list_concat(Facts, ', ', Atom),
        format('Hello from Prolog: ~w', [Atom]).

db(_):-
        heroku_db_connect(Connection),
        format('Content-Type: text/html~n~n', []),        
        format('We have a connection: ~q', [Connection]).

:-multifile(some_fact/1).
some_fact(main).
some_fact(master).

