import System.Environment (getArgs)

main :: IO()
main = do putStrLn ".intel_syntax noprefix"
          putStrLn ".globl main"
          putStrLn "\nmain:"
          args <- getArgs
          putStr "  mov rax, "
          putStrLn $ args !! 0
          putStrLn "  ret"

