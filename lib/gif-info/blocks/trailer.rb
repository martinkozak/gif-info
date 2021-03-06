# encoding: utf-8
# (c) 2011 Martin Kozák (martinkozak@martinkozak.net)

require "gif-info/block"

##
# Primary GifInfo module.
#

class GifInfo

    ##
    # General blocks module.
    #
    
    module Blocks
    
        ##
        # Indicates the end of the file.
        #
        
        class Trailer < Block
            ##
            # Skips block in stream.
            #
     
            def skip!
                @io.seek(1, IO::SEEK_CUR)
            end
        end
    end
end
