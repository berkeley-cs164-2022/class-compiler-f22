let compile (program:string): string =
    String.concat "\n" [
        "global _entry";
    "_entry:";
    Printf.sprintf "		mov rax, %s" program;
    "		ret"
    ]

let compile_to_file (program: string): unit =
     let file = open_out "program.s" in
     output_string file (compile program);
     close_out file

 let compile_and_run (program: string): string =
    compile_to_file program;
    let format = (if Asm.macos then "macho64" else "elf64") in
    ignore (Unix.system ("nasm program.s -f " ^ format ^ " -o program.o"));
    ignore (Unix.system "gcc program.o runtime.c -o program");
    let inp = Unix.open_process_in "./program" in
    let r = input_line inp in
    close_in inp; r