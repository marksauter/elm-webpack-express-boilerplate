module Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


(=>) : a -> b -> ( a, b )
(=>) = (,)


-- MODEL


type alias Model = String



model : Model
model = "" 


-- UPDATE


type Msg 
  = Message

update : Msg -> Model -> Model
update msg model =
  case msg of
    Message ->
      "Hello, World!"
    

-- VIEW


view : Model -> Html Msg
view model =
  div 
    [ style 
      [ "background-color" => "blue"
      , "width" => "500px"
      , "height" => "500px"
      , "font-size" => "175px"
      ]
    , onClick Message
    ]
    [ text model ]
    
