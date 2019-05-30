import System.IO()
import Data.List


--parsea lo que lee--
parseFile :: String -> [String]
parseFile name = do
	lineas <- lines name
	let pr = lineas
	return pr

{--compararElem:: Char -> [String]-> Int -> Int -> [String]
compararElem letra arreglo x sub = do
    let tamar = obtenerTamañoArr arreglo
    let tampal = obtenerTamPal $ arreglo !! 1
    let list = []
    if x >= tamar
        then list
        else do
            insert "bca" list
            --compararElem letra arreglo x+1 sub--
            if x <= tamar
                then compararElem letra arreglo x+1 sub
                else compararElem letra arreglo x+1 sub


                --}
{--comparar:: Char -> [String]-> Int -> Int -> String -> String
comparar letra arreglo x xsub dep = do
    let tam = obtenerTamañoArr arreglo
    if x >= tam
        then dep
        else  comparar letra arreglo x+1 0 dep --}

{--comparar:: String -> [String] -> Int -> [String]
comparar letra arreglo x = do
    pal <- arreglo !! x
    let al = [ pal | pal <- arreglo, pal == letra ]
    let b = al !! 1 ++ al !! 2
    words b --}


--funcion principal--
main = do
    x <- readFile "/home/marioxe/Desktop/Documentos/Haskell-Proyects/arreglo.txt"
    let a = parseFile x
    --let i = [x | x <- a, x == "ABC"]-- --x es la letra a seria el arreglo --
    let b = obtenerElem a 0 0 
    let c = obtenerElemArr a 0
    --let d = comparar "A" a 1--
    --let d = comparar b a 0 0 b--
    return $ c

--obtiene string del array--
obtenerElemArr :: [String] -> Int -> String
obtenerElemArr arreglo indice = do
    let pal = arreglo !! indice
    pal
--obtiene un caracter del string --
obtenerElem :: [String] -> Int -> Int -> Char
obtenerElem arreglo ind subi = do
    let pal = obtenerElemArr arreglo ind !! subi
    pal

--lenght del arreglo--
obtenerTamañoArr :: [String] -> Int
obtenerTamañoArr arreglo = do
    let tam = length arreglo
    tam
--lenght de la palabra--
obtenerTamPal :: String -> Int
obtenerTamPal pal = do
    let tam = length pal
    tam


{--compararElem :: String -> [String] -> String
compararElem pal arreglo = do
    --}
