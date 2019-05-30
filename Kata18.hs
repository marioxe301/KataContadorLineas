import System.IO()
import Data.List()


--parsea lo que lee--
parseFile :: String -> [String]
parseFile name = do
	lineas <- lines name
	let pr = lineas
	return pr

concatword:: String -> Int -> String
concatword le x = do
    if x==0
        then le
        else le

{--comparar:: Char -> [String]-> Int -> Int -> String -> String
comparar letra arreglo x xsub dep = do
    let tam = obtenerTamañoArr arreglo
    if x >= tam
        then dep
        else  comparar letra arreglo x+1 0 dep --}

--funcion principal--
main = do
    x <- readFile "/home/marioxe/Desktop/Documentos/Haskell-Proyects/arreglo.txt"
    let a = parseFile x
    let b = obtenerElem a 0 0 
    let c = obtenerElemArr a 0
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
