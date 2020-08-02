local List = require 'pandoc.List'
 local audio_extensions = List:new{
   'mp3',
   'wav',
   'aif',
   'aiff',
   'ogg',
   'flac',
 }
 local video_extensions = List:new{
   'mp4',
   'mpeg',
   'webm',
   'mov',
 }

 function Image(img)
   local ext = img.src:match '%.([^.]*)$'
   if audio_extensions:find(ext) or video_extensions:find(ext) then
     print(img.src)
     return pandoc.Link(img.caption, img.src, img.title, img.attr)
   end
 end
