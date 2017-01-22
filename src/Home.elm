module Home exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)



-- MODEL


type alias Model =
  { message: String }



init : (Model, Cmd Msg)
init =
  { message = "Hello!" } ! [] 


-- UPDATE


type Msg 
  = Message

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Message ->
      Model "World!" ! []
    


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ label [ onClick Message ] [ text model.message ]
    ]
