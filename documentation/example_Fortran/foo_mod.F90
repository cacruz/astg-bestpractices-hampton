!> A sample module.
module foo_mod
   implicit none
   private
   
   public :: blocklist
   public :: Foo
   public :: doSomething
   public :: somethingElse

  !> List of the local blocks of a distributed matrix.
  !!
  !! \details This structure can be helpful when modifying a distributed
  !! matrix directly on the local nodes. For example, in order to multiply
  !! every column of a distributed matrix by a column dependent factor, 
  !! you could use the blocklist the following way:
  !!
  !!     type(blocklist) :: blocks
  !!     integer :: ii, jj, jglob, jloc, bsize
  !!     :
  !!     call blocks%init(mygrid, descaa, "c")
  !!     do ii = 1, size(blocks)
  !!       call blocks%getblock(ii, jglob, jloc, bsize)
  !!       do jj = 0, bsize  - 1
  !!         aa(:,jloc + jj) =  aa(:,jloc + jj) * ff(jglob + jj)
  !!       end do
  !!     end do
  !!
  type :: blocklist
    private
    integer :: nn, nb, nproc, myproc, srcproc, nblock
  contains
    !> Initializes the instance.
    procedure :: init => blocklist_init

    !> Returns the size of the blocklist.
    procedure :: getsize => blocklist_getsize

    !> Returns the indices (local and global) of a local block.
    procedure :: getblock => blocklist_getblock
  end type blocklist

  interface size
    module procedure blocklist_getsize
  end interface size

   !> a Public type
   type Foo
!!$      private
!!$      !> @var A component
!!$      integer :: component
!!$   contains
!!$      procedure :: doSomething()
   end type Foo

contains

   !> A subroutine that does something.
   !! \param this object
   !! \param x an argument
   subroutine doSomething(this, x)
      class (Foo), intent(in) :: this
      real, intent(in) :: x

      integer :: i
   end subroutine doSomething

   !> A subroutine that does something else.
   !! \param this object
   !! \param x an argument
   subroutine somethingElse(this, x)
      class (Foo), intent(in) :: this
      real, intent(in) :: x

      integer :: i
   end subroutine somethingElse

end module Foo_mod
