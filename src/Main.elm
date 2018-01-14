module Main exposing (..)
import Html exposing (..)

--port toElm : (String -> msg) -> Sub msg

-- MAIN

main : Program Never Model Msg
main =
    Html.program
        {
          init          = init,
          update        = update,
          view          = view,
          subscriptions = subscriptions
        }

-- MODEL

type alias Model =
  {
    login : String,
    password : String
  }

init : ( Model, Cmd Msg )
init = ( {login = "Hello", password = "World"}, Cmd.none )

-- UPDATE

type Msg
  = DoNothing

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    DoNothing ->
      ( model, Cmd.none )

-- VIEW

view : Model -> Html Msg
view {login, password} =
    div [] [text (login ++ " " ++ password)]

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
