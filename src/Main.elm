module Main exposing (main)

import Html

import Home

  
main : Program Never Home.Model Home.Msg
main =
    Html.beginnerProgram
        { model = Home.model
        , update = Home.update
        , view = Home.view
        }
