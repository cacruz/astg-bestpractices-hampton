module mod_converter

contains

    function from_C_to_F(tC) result(tF)
        real(kind=8) :: tC
        real(kind=8) :: tF
        tF = (tC * 1.8) + 32
    end function from_C_to_F

    function from_F_to_C(tF) result(tC)
        real(kind=8) :: tF
        real(kind=8) :: tC
        tC = (tF - 32) * 5.0/9.0
    end function from_F_to_C

    function from_C_to_K(tC) result(tK)
        real(kind=8) :: tC
        real(kind=8) :: tK
        tK = tC + 273.0
    end function from_C_to_K

    function from_K_to_F(tK) result(tF)
        real(kind=8) :: tK
        real(kind=8) :: tF
        tF = from_C_to_F(tK - 273.0)
    end function from_K_to_F

    function from_F_to_K(tF) result(tK)
        real(kind=8) :: tF
        real(kind=8) :: tK
        tK = from_F_to_C(tF) + 273.0
    end function from_F_to_K

end module mod_converter
