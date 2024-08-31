main :: IO ()
main = do
    putStrLn "Digite o valor de x: "
    x <- readLn :: IO Int
    n <- solicitarPositivo "Digite o valor de n (não-negativo): "
    let resultado = x ^ n
    putStrLn $ show x ++ " elevado a " ++ show n ++ " é igual a: " ++ show resultado

solicitarPositivo :: String -> IO Int
solicitarPositivo prompt = do
    putStrLn prompt
    n <- readLn :: IO Int
    if n < 0
        then do
            putStrLn "Por favor, digite um número não-negativo."
            solicitarPositivo prompt
        else return n
