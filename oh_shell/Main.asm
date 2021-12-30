;.386
.model flat, stdcall
.stack 4096





.code
main PROC

	jmp start_program
   function1:
   push ebp
   mov ebp , esp


   sub esp , 8
   mov ebx, [ebp+8]
   mov [ebp-4] , ebx
   mov edx , [ebp-4]

   mov ebp , esp 
   pop ebp
   ret



   start_program:
   xor eax , eax
   mov eax , 12
   push eax 


   call function1
   mov ebx , 15






main ENDP

END main 

