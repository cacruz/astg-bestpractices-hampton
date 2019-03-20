program temperature_converter

    use mod_converter

    real(kind=8) :: cel, fahr, kel

    ! Calculate Fahrenheit
    cel = 37.5
    fahr = from_C_to_F(cel)
    write(*,'(f8.3, a, f8.3, a)') cel,' degree Celsius is equal to ', fahr, ' degree Fahrenheit'

    ! Calculate Celcius
    fahr = 67.8
    cel = from_F_to_C(fahr)
    write(*,'(f8.3, a, f8.3, a)') fahr,' degree Fahrenheit is equal to ', cel, ' degree Celcius'

    kel = from_F_to_K(fahr)
    write(*,'(f8.3, a, f8.3, a)') fahr,' degree Fahrenheit is equal to ', kel, ' degree Kelvin'

end program temperature_converter
