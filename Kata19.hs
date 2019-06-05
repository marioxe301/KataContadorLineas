import System.IO()
--import Data.List--
import Data.String.Utils


main = do
    x <- readFile "dic.txt"
    let a = parseFile x
    putStrLn "Ingrese la primera palabra"
    pala <- getLine
    putStrLn "Ingrese la segunda palabra"
    palb <- getLine

    putStrLn "\n"
    putStrLn "\n"

    putStrLn pala
    maincomp pala palb a 0 pala
    
    --return $ b--

--Parsear el archivo para dejarlo cargado en memoria--
parseFile :: String -> [String]
parseFile name = do
	lineas <- lines name
	let pr = lineas
	return pr
	
	
-- Funcion Comparadora Booleana--
comparar :: String -> String -> Int -> Bool
comparar pal1 pal2 pos = do
    let p1 = pal1 !! pos
    let p2 = pal2 !! pos
    if p1 == p2
        then True
        else False

--Funcion Comparadora Principal en el diccionario-- 
compararEnLista :: String -> [String] -> Bool
compararEnLista pal1 arreglo = do
    let pal2 = arreglo
    let pa = pal1
    let com = elem pa pal2
    if com
        then True
        else False

maincomp :: String -> String -> [String] -> Int -> String -> IO String
maincomp pal1 pal2 arreglo x org = do
    let a1 = pal1
    if a1 == pal2
        then do
            putStrLn "\n" 
            return $ "WordChain de " ++ org ++ " -> "++ pal2
            
        else do
            if x >= (length pal1)
                then maincomp a1 pal2 arreglo 0 org
                else do
                    let compale = comparar pal1 pal2 x
                    if compale
                        then maincomp a1 pal2 arreglo (x+1) org
                        else do
                            let c = pal1 !! x
                            let d = pal2 !! x
                            let e = charToString c
                            let f = charToString d
                            let new = replace e f pal1

                            let existe = compararEnLista new arreglo
                            if existe
                                then do
                                    putStrLn new
                                    maincomp new pal2 arreglo 0 org
                                else maincomp a1 pal2 arreglo (x+1) org
                            {--print new
                            maincomp new pal2 arreglo x--}

charToString :: Char -> String
charToString c = [c]




{--maincomp:: String-> String -> [String] -> Int -> IO String
maincomp pal1 pal2 arreglo x = do--}

