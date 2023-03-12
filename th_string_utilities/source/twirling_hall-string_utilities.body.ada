pragma Ada_2022;

package body Twirling_Hall.String_Utilities is



   function The_Last_Occurrence_Of( The_Character_To_Find : in Character;
                                    Contained_In          : in String     ) return Integer is

      The_String_To_Search renames Contained_In;

   begin -- The_Last_Occurrence_Of

      for The_Ending_Index in reverse The_String_To_Search'Range loop

         if The_String_To_Search( The_Ending_Index ) = The_Character_To_Find then

            return The_Ending_Index;

         end if;

      end loop;


      raise Program_Error;  pragma Compile_Time_Warning( Standard.True, "The_Last_Occurrence_Of requires an exception to be raised if The_Character_To_Find is not found");


   end The_Last_Occurrence_Of;




end Twirling_Hall.String_Utilities;
