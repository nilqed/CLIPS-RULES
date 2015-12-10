(unwatch all)
(clear)
(set-strategy depth)
(open "Results//v640fun.rsl" v640fun "w")
(dribble-on "Actual//v640fun.out")
(batch "v640fun.bat")
(dribble-off)
(load "compline.clp")
(printout v640fun "v640fun.bat differences are as follows:" crlf)
(compare-files "Expected//v640fun.out" "Actual//v640fun.out" v640fun)
; close result file
(close v640fun)
