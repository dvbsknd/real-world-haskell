main = interact wordCount
    where wordCount input = show (length (concat $ words input)) ++ "\n"
