module Main exposing (main)

import Html

import Home


main : Program Never Home.Model Home.Msg
main =
    Html.program
        { init = Home.init
        , update = Home.update
        , view = Home.view
        , subscriptions = Home.subscriptions
        }
