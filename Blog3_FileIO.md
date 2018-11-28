# FileIO

This week, we went ahead and researched how File I/O works in Common Lisp. We quickly learned that Common Lisp is a very clean cut language
and code is often concise and short. Let's dig further!

### Writing to a File
Here is what opening and writing to a file looks like in Common Lisp: 
```
(with-open-file (stream "/tmp/myfile.txt" :direction :output)
   (format stream "Welcome to Tutorials Point!")
   (terpri stream)
   (format stream "This is a tutorials database")
   (terpri stream)
   (format stream "Submit your Tutorials, White Papers and Articles into our Tutorials Directory.")
)

#Reference: https://www.tutorialspoint.com/lisp/lisp_file_io.htm
```
The with-open-file allows for opening and writing to a file. Please note that you must declare the stream 
variable assosicated with the read/write transaction. 

### Reading from a File 
```
(let ((in (open "/tmp/myfile.txt" :if-does-not-exist nil)))
   (when in
      (loop for line = (read-line in nil)
      
      while line do (format t "~a~%" line))
      (close in)
   )
)

#Same reference as above
```

Unlike many other languages, Common Lisp commonly takes multiple keyword arguments in one line when reading or writing to a file. 
Let's take a look at some acceptable formats. 
```
open filename &key :direction :element-type :if-exists :if-does-not-exist :external-format
```
* The :direction keyword specifies wether the stream should be an input, output, or both
* The :if-exists keyword will handle output and io errors if the given file name already exists 
* :if-does-not-exist keyword handles what to do if the file does not exist 
