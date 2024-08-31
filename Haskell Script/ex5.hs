import Data.List
import Data.Char (toUpper)

main :: IO ()
main = do
    putStrLn "Digite uma frase: "
    frase <- getLine
    putStrLn "Digite a palavra a ser contada: "
    palavra <- getLine
    let fraseUpper = map toUpper frase
    let palavraUpper = map toUpper palavra
    let contagem = contarOcorrencias palavraUpper fraseUpper
    putStrLn $ "A palavra '" ++ palavra ++ "' ocorre " ++ show contagem ++ " vezes na frase."

contarOcorrencias :: String -> String -> Int
contarOcorrencias palavra = length . filter (isPrefixOf palavra) . tails
