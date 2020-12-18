(defsystem "srpn"
  :author "Vlad P. Luchian <cstmlcodes@gmail.com>"
  :description "A Saturated Reverse Polish Notation Calculator"
  :version "0.0.1"
  :license "BSD-3-Clause"
  :depends-on ()                  ;;this is where you put what libraries you need (:srpn :uiop :etc) 
  :components ((:module "src"     ;; the folder where asdf looks for source files for the project
		:components       ;; then you need to say what components this module has
		((:file main))))) ;; and what files to open from that module-component
#||

0. For asdf to find it this must be part of the asdf filepath
I have mine set up at  ~/.quiclisp/local-projects/ 

1.The Filesystem looks like this

 ~/.quiclisp/local-projects/~/.quiclisp/local-projects/srpnsrpn
 ├── src
 │   └── main.lisp
 │ 
 └── srpn.asd

To load this into your program you do 
(asdf:load-system :srpn)

To check it worked do
(asdf:already-loaded-systems)					;

#||
