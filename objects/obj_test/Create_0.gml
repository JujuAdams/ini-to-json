ini_open("json.txt");
    
    ini_write_string( "It's a section", "Here's a key", "Value!" );
    ini_write_real( "It's a section", "Here's another key", 123 );
    
    ini_write_real( "Temporary section", "This key is going to die", 234 );
    ini_write_real( "Another temporary section", "This key is going to die as well", 345 );
    
    ini_key_delete( "Temporary section", "This key is going to die" );
    ini_section_delete( "Another temporary section" );
    
ini_close();

ini_open("json.txt");
    
    show_message(ini_read_string("It's a section", "Here's a key", "???"));
    show_message(ini_read_real("It's a section", "Here's another key", 0));
    
ini_close();