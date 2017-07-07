#------------------------------------------------------------------------------#
# Copyright (c) 2014 Los Alamos National Security, LLC
# All rights reserved.
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Add support development targets.
#------------------------------------------------------------------------------#

option(ENABLE_DEVEL_TARGETS "Enable development targets" OFF)

function(cinch_add_devel_target name)

    set(_TARGET_DIR devel)

    #--------------------------------------------------------------------------#
    # Add test options
    #--------------------------------------------------------------------------#

    include(detail/test-options)

    #--------------------------------------------------------------------------#
    # Process the test policy.
    #--------------------------------------------------------------------------#

    include(detail/test-policies)

    if(NOT test_policy_runtime)
        return()
    endif()

    #--------------------------------------------------------------------------#
    # Add the executable
    #--------------------------------------------------------------------------#

    add_executable(${name} ${test_SOURCES} ${_OUTPUT_DIR}/${_TARGET_MAIN})

    #--------------------------------------------------------------------------#
    # Set test properties.
    #--------------------------------------------------------------------------#

    include(detail/test-properties)

    target_compile_definitions(${name} PRIVATE CINCH_DEVEL_TARGET)

    #--------------------------------------------------------------------------#
    # Process test inputs.
    #--------------------------------------------------------------------------#

    include(detail/test-inputs)

endfunction(cinch_add_devel_target)

#------------------------------------------------------------------------------#
# Formatting options for emacs and vim.
# vim: set tabstop=4 shiftwidth=4 expandtab :
#------------------------------------------------------------------------------#
