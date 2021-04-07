module SpaceAge (Planet(..), ageOn) where



-- data Planet = Mercury 0.2408467*31557600
--             | Venus 0.71519726*eys
--             | Earth eys
--             | Mars 1.8808158*eys
--             | Jupiter 11.862615*eys
--             | Saturn 29.447498*eys
--             | Uranus 84.016846*eys
--             | Neptune 164.79132*eys

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune


ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / case planet of Mercury -> 0.2408467*eys
                                                Venus -> 0.61519726*eys
                                                Earth -> eys
                                                Mars -> 1.8808158*eys
                                                Jupiter -> 11.862615*eys
                                                Saturn -> 29.447498*eys
                                                Uranus -> 84.016846*eys
                                                Neptune -> 164.79132*eys
                                                where eys = 31557600.0
                                                

{-
Mercury: orbital period 0.2408467 Earth years
Venus: orbital period 0.61519726 Earth years
Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
Mars: orbital period 1.8808158 Earth years
Jupiter: orbital period 11.862615 Earth years
Saturn: orbital period 29.447498 Earth years
Uranus: orbital period 84.016846 Earth years
Neptune: orbital period 164.79132 Earth years
-}
