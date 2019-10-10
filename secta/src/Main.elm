module Main exposing (main)

import Browser
import Html exposing (Html, button, div, input, text)
import Html.Events exposing (onClick)



-- MODEL


type alias Model =
    { username : String
    , password : String
    }



-- UPDATE


type Msg
    = UsernameChange String
    | PasswordChange String



-- VIEW


view : Model -> Html Msg
view model =
    Html.form [ action "http://localhost:8080/api/v1/login", method "post" ]
        [ label []
            [ text "Email"
            , input [ type_ "text", name "email" ] []
            ]
        , label []
            [ text "Password"
            , input [ type_ "password" ] []
            ]
        , button [] [ text "Submit" ]
        ]
