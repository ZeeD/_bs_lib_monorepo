'import "pkg:/source/roku_modules/lowlib/lowlib.brs"
function __HiLib_builder()
    instance = {}
    instance.new = sub(lowLib_ as object)
        m.lowLib_ = invalid
        m.lowLib_ = lowLib_
    end sub
    instance.doThat = function() as String
        return m.lowLib_.doit() + "ciao"
    end function
    return instance
end function
function HiLib(lowLib_ as object)
    instance = __HiLib_builder()
    instance.new(lowLib_)
    return instance
end function