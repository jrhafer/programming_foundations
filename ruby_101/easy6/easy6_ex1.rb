# problem: given a floating, or decimal integer, return an angle
# in degrees, minutes and seconds.

# input => float
# output => degrees, minutes and seconds


DEGREE = "\xC2\xB0"

def dms(float)

end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
