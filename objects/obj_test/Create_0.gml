jini_open( "json.txt" );
    
    jini_write_string( "It's a section", "Here's a key", "Value!" );
    jini_write_real( "It's a section", "Here's another key", 123 );
    
    jini_write_real( "Temporary section", "This key is going to die", 234 );
    jini_write_real( "Another temporary section", "This key is going to die as well", 345 );
    
    jini_key_delete( "Temporary section", "This key is going to die" );
    jini_section_delete( "Another temporary section" );
    
jini_close();

jini_open( "json.txt" );
    
    show_message( jini_read_string( "It's a section", "Here's a key", "???" ) );
    show_message( jini_read_real( "It's a section", "Here's another key", 0 ) );
    
jini_close();