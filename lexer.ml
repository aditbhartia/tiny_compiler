let rec lex_chars chars =
	match chars with
	| [] -> () 
	| '{'::rest -> print_endline "OpenBrace";lex_chars rest
	| '}'::rest -> print_endline "CloseBrace";lex_chars rest
	| '('::rest -> print_endline "OpenParen";lex_chars rest
	| ')'::rest -> print_endline "CloseParen";lex_chars rest
	| ';'::rest -> print_endline "Semicolon";lex_chars rest
	| _::rest -> lex_chars rest

let rec get_chars_from_ic ic = 
	match input_char ic with
	| c -> c::get_chars_from_ic ic	
	| exception (End_of_file) -> []

let _ = Array.get Sys.argv 1 |> open_in |> get_chars_from_ic |> lex_chars
