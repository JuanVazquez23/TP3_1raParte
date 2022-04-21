module Library where
--rt PdePreludat

--doble :: Number -> Number
doble numero = numero + numero

data Hechicero = Hechicero {anios::Int, grado::Int, clan::String}
nobara = Hechicero 1 3 "Kugisaki"
satoru = Hechicero 15 0 "Gojo"
maki = Hechicero 3 4 "Zenin"
yuji = Hechicero 0 1 "Itadori"

tieneExperiencia :: Hechicero -> Bool
tieneExperiencia hechi = anios hechi > 1

estaPreparado :: [Hechicero] -> Bool
estaPreparado lista = length lista > 3

subirDeGrado :: Hechicero -> Int
subirDeGrado hechi | grado hechi == 0 = grado hechi
                   | otherwise = grado hechi - 1

esPrestigioso :: Hechicero -> Bool
esPrestigioso hechi =  clan hechi == "Zenin" || clan hechi == "Gojo" || clan hechi == "Kamo"

--cantHechiEspeciales :: [Hechicero] -> Int
--cantHechiEspeciales lista = filter (grado == 0) lista
