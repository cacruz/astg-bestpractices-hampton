!------------------------------------------------------------------------------
!        NASA LRC
!------------------------------------------------------------------------------
! TITLE         : ScaLAPACK Subroutines
! PROJECT       : sub-project name
! MODULE        : mainProgram
! URL           : ...
! AFFILIATION   : ...
! DATE          : ...
! REVISION      : ... V 0.15
!> @author
!> Author name goes here
!
! DESCRIPTION:
!> Use ScaLAPACK subroutines to perform Linear algebra calculations
!------------------------------------------------------------------------------
program mainProgram

   use foo_mod,      only : doSomething, somethingElse
   use myModule_mod, only : someFunction, myModule_type
   use scala,        only : scalafx_ppotrf, scalafx_getdescriptor

   inplicit none

   integer, parameter :: minsPerHours    =  60 !< number of minutes per hour
   integer, parameter :: hoursPerDay     =  24 !< number of hours per day
   integer, parameter :: daysPerWeek     =   7 !< number of days per week

   real(kind=8) :: Rho_ref = 1000.0 !< Reference density of the medium (default=1000.0) (kg m-3)
   real(kind=8), allocatable :: seaLevelPress(:,:) !< sea level pressure

   ! include your code here.


end program mainProgram
