(deftemplate data
   (slot index)
   (slot value))

(deffacts start
   (data (index 1000000) (value 100000)))

(defrule loop
   (declare (salience 1))
   ?f <- (data (index ?i&~0))
   =>
   (modify ?f (index (- ?i 1)) (value (- ?i 1))))

(defrule rule-1
   (data (value ?x&:(eq ?x 1)))
   =>)

(defrule rule-2
   (data (value ?x&:(eq ?x 2)))
   =>)

(defrule rule-3
   (data (value ?x&:(eq ?x 3)))
   =>)

(defrule rule-4
   (data (value ?x&:(eq ?x 4)))
   =>)

(defrule rule-5
   (data (value ?x&:(eq ?x 5)))
   =>)

(defrule rule-6
   (data (value ?x&:(eq ?x 6)))
   =>)

(defrule rule-7
   (data (value ?x&:(eq ?x 7)))
   =>)

(defrule rule-8
   (data (value ?x&:(eq ?x 8)))
   =>)

(defrule rule-9
   (data (value ?x&:(eq ?x 9)))
   =>)

(defrule rule-10
   (data (value ?x&:(eq ?x 10)))
   =>)

(defrule rule-11
   (data (value ?x&:(eq ?x 11)))
   =>)

(defrule rule-12
   (data (value ?x&:(eq ?x 12)))
   =>)

(defrule rule-13
   (data (value ?x&:(eq ?x 13)))
   =>)

(defrule rule-14
   (data (value ?x&:(eq ?x 14)))
   =>)

(defrule rule-15
   (data (value ?x&:(eq ?x 15)))
   =>)

(defrule rule-16
   (data (value ?x&:(eq ?x 16)))
   =>)

(defrule rule-17
   (data (value ?x&:(eq ?x 17)))
   =>)

(defrule rule-18
   (data (value ?x&:(eq ?x 18)))
   =>)

(defrule rule-19
   (data (value ?x&:(eq ?x 19)))
   =>)

(defrule rule-20
   (data (value ?x&:(eq ?x 20)))
   =>)

(defrule rule-21
   (data (value ?x&:(eq ?x 21)))
   =>)

(defrule rule-22
   (data (value ?x&:(eq ?x 22)))
   =>)

(defrule rule-23
   (data (value ?x&:(eq ?x 23)))
   =>)

(defrule rule-24
   (data (value ?x&:(eq ?x 24)))
   =>)

(defrule rule-25
   (data (value ?x&:(eq ?x 25)))
   =>)

(defrule rule-26
   (data (value ?x&:(eq ?x 26)))
   =>)

(defrule rule-27
   (data (value ?x&:(eq ?x 27)))
   =>)

(defrule rule-28
   (data (value ?x&:(eq ?x 28)))
   =>)

(defrule rule-29
   (data (value ?x&:(eq ?x 29)))
   =>)

(defrule rule-30
   (data (value ?x&:(eq ?x 30)))
   =>)

(defrule rule-31
   (data (value ?x&:(eq ?x 31)))
   =>)

(defrule rule-32
   (data (value ?x&:(eq ?x 32)))
   =>)

(defrule rule-33
   (data (value ?x&:(eq ?x 33)))
   =>)

(defrule rule-34
   (data (value ?x&:(eq ?x 34)))
   =>)

(defrule rule-35
   (data (value ?x&:(eq ?x 35)))
   =>)

(defrule rule-36
   (data (value ?x&:(eq ?x 36)))
   =>)

(defrule rule-37
   (data (value ?x&:(eq ?x 37)))
   =>)

(defrule rule-38
   (data (value ?x&:(eq ?x 38)))
   =>)

(defrule rule-39
   (data (value ?x&:(eq ?x 39)))
   =>)

(defrule rule-40
   (data (value ?x&:(eq ?x 40)))
   =>)

(defrule rule-41
   (data (value ?x&:(eq ?x 41)))
   =>)

(defrule rule-42
   (data (value ?x&:(eq ?x 42)))
   =>)

(defrule rule-43
   (data (value ?x&:(eq ?x 43)))
   =>)

(defrule rule-44
   (data (value ?x&:(eq ?x 44)))
   =>)

(defrule rule-45
   (data (value ?x&:(eq ?x 45)))
   =>)

(defrule rule-46
   (data (value ?x&:(eq ?x 46)))
   =>)

(defrule rule-47
   (data (value ?x&:(eq ?x 47)))
   =>)

(defrule rule-48
   (data (value ?x&:(eq ?x 48)))
   =>)

(defrule rule-49
   (data (value ?x&:(eq ?x 49)))
   =>)

(defrule rule-50
   (data (value ?x&:(eq ?x 50)))
   =>)

(defrule rule-51
   (data (value ?x&:(eq ?x 51)))
   =>)

(defrule rule-52
   (data (value ?x&:(eq ?x 52)))
   =>)

(defrule rule-53
   (data (value ?x&:(eq ?x 53)))
   =>)

(defrule rule-54
   (data (value ?x&:(eq ?x 54)))
   =>)

(defrule rule-55
   (data (value ?x&:(eq ?x 55)))
   =>)

(defrule rule-56
   (data (value ?x&:(eq ?x 56)))
   =>)

(defrule rule-57
   (data (value ?x&:(eq ?x 57)))
   =>)

(defrule rule-58
   (data (value ?x&:(eq ?x 58)))
   =>)

(defrule rule-59
   (data (value ?x&:(eq ?x 59)))
   =>)

(defrule rule-60
   (data (value ?x&:(eq ?x 60)))
   =>)

(defrule rule-61
   (data (value ?x&:(eq ?x 61)))
   =>)

(defrule rule-62
   (data (value ?x&:(eq ?x 62)))
   =>)

(defrule rule-63
   (data (value ?x&:(eq ?x 63)))
   =>)

(defrule rule-64
   (data (value ?x&:(eq ?x 64)))
   =>)

(defrule rule-65
   (data (value ?x&:(eq ?x 65)))
   =>)

(defrule rule-66
   (data (value ?x&:(eq ?x 66)))
   =>)

(defrule rule-67
   (data (value ?x&:(eq ?x 67)))
   =>)

(defrule rule-68
   (data (value ?x&:(eq ?x 68)))
   =>)

(defrule rule-69
   (data (value ?x&:(eq ?x 69)))
   =>)

(defrule rule-70
   (data (value ?x&:(eq ?x 70)))
   =>)

(defrule rule-71
   (data (value ?x&:(eq ?x 71)))
   =>)

(defrule rule-72
   (data (value ?x&:(eq ?x 72)))
   =>)

(defrule rule-73
   (data (value ?x&:(eq ?x 73)))
   =>)

(defrule rule-74
   (data (value ?x&:(eq ?x 74)))
   =>)

(defrule rule-75
   (data (value ?x&:(eq ?x 75)))
   =>)

(defrule rule-76
   (data (value ?x&:(eq ?x 76)))
   =>)

(defrule rule-77
   (data (value ?x&:(eq ?x 77)))
   =>)

(defrule rule-78
   (data (value ?x&:(eq ?x 78)))
   =>)

(defrule rule-79
   (data (value ?x&:(eq ?x 79)))
   =>)

(defrule rule-80
   (data (value ?x&:(eq ?x 80)))
   =>)

(defrule rule-81
   (data (value ?x&:(eq ?x 81)))
   =>)

(defrule rule-82
   (data (value ?x&:(eq ?x 82)))
   =>)

(defrule rule-83
   (data (value ?x&:(eq ?x 83)))
   =>)

(defrule rule-84
   (data (value ?x&:(eq ?x 84)))
   =>)

(defrule rule-85
   (data (value ?x&:(eq ?x 85)))
   =>)

(defrule rule-86
   (data (value ?x&:(eq ?x 86)))
   =>)

(defrule rule-87
   (data (value ?x&:(eq ?x 87)))
   =>)

(defrule rule-88
   (data (value ?x&:(eq ?x 88)))
   =>)

(defrule rule-89
   (data (value ?x&:(eq ?x 89)))
   =>)

(defrule rule-90
   (data (value ?x&:(eq ?x 90)))
   =>)

(defrule rule-91
   (data (value ?x&:(eq ?x 91)))
   =>)

(defrule rule-92
   (data (value ?x&:(eq ?x 92)))
   =>)

(defrule rule-93
   (data (value ?x&:(eq ?x 93)))
   =>)

(defrule rule-94
   (data (value ?x&:(eq ?x 94)))
   =>)

(defrule rule-95
   (data (value ?x&:(eq ?x 95)))
   =>)

(defrule rule-96
   (data (value ?x&:(eq ?x 96)))
   =>)

(defrule rule-97
   (data (value ?x&:(eq ?x 97)))
   =>)

(defrule rule-98
   (data (value ?x&:(eq ?x 98)))
   =>)

(defrule rule-99
   (data (value ?x&:(eq ?x 99)))
   =>)

(defrule rule-100
   (data (value ?x&:(eq ?x 100)))
   =>)

(defrule rule-101
   (data (value ?x&:(eq ?x 101)))
   =>)

(defrule rule-102
   (data (value ?x&:(eq ?x 102)))
   =>)

(defrule rule-103
   (data (value ?x&:(eq ?x 103)))
   =>)

(defrule rule-104
   (data (value ?x&:(eq ?x 104)))
   =>)

(defrule rule-105
   (data (value ?x&:(eq ?x 105)))
   =>)

(defrule rule-106
   (data (value ?x&:(eq ?x 106)))
   =>)

(defrule rule-107
   (data (value ?x&:(eq ?x 107)))
   =>)

(defrule rule-108
   (data (value ?x&:(eq ?x 108)))
   =>)

(defrule rule-109
   (data (value ?x&:(eq ?x 109)))
   =>)

(defrule rule-110
   (data (value ?x&:(eq ?x 110)))
   =>)

(defrule rule-111
   (data (value ?x&:(eq ?x 111)))
   =>)

(defrule rule-112
   (data (value ?x&:(eq ?x 112)))
   =>)

(defrule rule-113
   (data (value ?x&:(eq ?x 113)))
   =>)

(defrule rule-114
   (data (value ?x&:(eq ?x 114)))
   =>)

(defrule rule-115
   (data (value ?x&:(eq ?x 115)))
   =>)

(defrule rule-116
   (data (value ?x&:(eq ?x 116)))
   =>)

(defrule rule-117
   (data (value ?x&:(eq ?x 117)))
   =>)

(defrule rule-118
   (data (value ?x&:(eq ?x 118)))
   =>)

(defrule rule-119
   (data (value ?x&:(eq ?x 119)))
   =>)

(defrule rule-120
   (data (value ?x&:(eq ?x 120)))
   =>)

(defrule rule-121
   (data (value ?x&:(eq ?x 121)))
   =>)

(defrule rule-122
   (data (value ?x&:(eq ?x 122)))
   =>)

(defrule rule-123
   (data (value ?x&:(eq ?x 123)))
   =>)

(defrule rule-124
   (data (value ?x&:(eq ?x 124)))
   =>)

(defrule rule-125
   (data (value ?x&:(eq ?x 125)))
   =>)

(defrule rule-126
   (data (value ?x&:(eq ?x 126)))
   =>)

(defrule rule-127
   (data (value ?x&:(eq ?x 127)))
   =>)

(defrule rule-128
   (data (value ?x&:(eq ?x 128)))
   =>)

(defrule rule-129
   (data (value ?x&:(eq ?x 129)))
   =>)

(defrule rule-130
   (data (value ?x&:(eq ?x 130)))
   =>)

(defrule rule-131
   (data (value ?x&:(eq ?x 131)))
   =>)

(defrule rule-132
   (data (value ?x&:(eq ?x 132)))
   =>)

(defrule rule-133
   (data (value ?x&:(eq ?x 133)))
   =>)

(defrule rule-134
   (data (value ?x&:(eq ?x 134)))
   =>)

(defrule rule-135
   (data (value ?x&:(eq ?x 135)))
   =>)

(defrule rule-136
   (data (value ?x&:(eq ?x 136)))
   =>)

(defrule rule-137
   (data (value ?x&:(eq ?x 137)))
   =>)

(defrule rule-138
   (data (value ?x&:(eq ?x 138)))
   =>)

(defrule rule-139
   (data (value ?x&:(eq ?x 139)))
   =>)

(defrule rule-140
   (data (value ?x&:(eq ?x 140)))
   =>)

(defrule rule-141
   (data (value ?x&:(eq ?x 141)))
   =>)

(defrule rule-142
   (data (value ?x&:(eq ?x 142)))
   =>)

(defrule rule-143
   (data (value ?x&:(eq ?x 143)))
   =>)

(defrule rule-144
   (data (value ?x&:(eq ?x 144)))
   =>)

(defrule rule-145
   (data (value ?x&:(eq ?x 145)))
   =>)

(defrule rule-146
   (data (value ?x&:(eq ?x 146)))
   =>)

(defrule rule-147
   (data (value ?x&:(eq ?x 147)))
   =>)

(defrule rule-148
   (data (value ?x&:(eq ?x 148)))
   =>)

(defrule rule-149
   (data (value ?x&:(eq ?x 149)))
   =>)

(defrule rule-150
   (data (value ?x&:(eq ?x 150)))
   =>)

(defrule rule-151
   (data (value ?x&:(eq ?x 151)))
   =>)

(defrule rule-152
   (data (value ?x&:(eq ?x 152)))
   =>)

(defrule rule-153
   (data (value ?x&:(eq ?x 153)))
   =>)

(defrule rule-154
   (data (value ?x&:(eq ?x 154)))
   =>)

(defrule rule-155
   (data (value ?x&:(eq ?x 155)))
   =>)

(defrule rule-156
   (data (value ?x&:(eq ?x 156)))
   =>)

(defrule rule-157
   (data (value ?x&:(eq ?x 157)))
   =>)

(defrule rule-158
   (data (value ?x&:(eq ?x 158)))
   =>)

(defrule rule-159
   (data (value ?x&:(eq ?x 159)))
   =>)

(defrule rule-160
   (data (value ?x&:(eq ?x 160)))
   =>)

(defrule rule-161
   (data (value ?x&:(eq ?x 161)))
   =>)

(defrule rule-162
   (data (value ?x&:(eq ?x 162)))
   =>)

(defrule rule-163
   (data (value ?x&:(eq ?x 163)))
   =>)

(defrule rule-164
   (data (value ?x&:(eq ?x 164)))
   =>)

(defrule rule-165
   (data (value ?x&:(eq ?x 165)))
   =>)

(defrule rule-166
   (data (value ?x&:(eq ?x 166)))
   =>)

(defrule rule-167
   (data (value ?x&:(eq ?x 167)))
   =>)

(defrule rule-168
   (data (value ?x&:(eq ?x 168)))
   =>)

(defrule rule-169
   (data (value ?x&:(eq ?x 169)))
   =>)

(defrule rule-170
   (data (value ?x&:(eq ?x 170)))
   =>)

(defrule rule-171
   (data (value ?x&:(eq ?x 171)))
   =>)

(defrule rule-172
   (data (value ?x&:(eq ?x 172)))
   =>)

(defrule rule-173
   (data (value ?x&:(eq ?x 173)))
   =>)

(defrule rule-174
   (data (value ?x&:(eq ?x 174)))
   =>)

(defrule rule-175
   (data (value ?x&:(eq ?x 175)))
   =>)

(defrule rule-176
   (data (value ?x&:(eq ?x 176)))
   =>)

(defrule rule-177
   (data (value ?x&:(eq ?x 177)))
   =>)

(defrule rule-178
   (data (value ?x&:(eq ?x 178)))
   =>)

(defrule rule-179
   (data (value ?x&:(eq ?x 179)))
   =>)

(defrule rule-180
   (data (value ?x&:(eq ?x 180)))
   =>)

(defrule rule-181
   (data (value ?x&:(eq ?x 181)))
   =>)

(defrule rule-182
   (data (value ?x&:(eq ?x 182)))
   =>)

(defrule rule-183
   (data (value ?x&:(eq ?x 183)))
   =>)

(defrule rule-184
   (data (value ?x&:(eq ?x 184)))
   =>)

(defrule rule-185
   (data (value ?x&:(eq ?x 185)))
   =>)

(defrule rule-186
   (data (value ?x&:(eq ?x 186)))
   =>)

(defrule rule-187
   (data (value ?x&:(eq ?x 187)))
   =>)

(defrule rule-188
   (data (value ?x&:(eq ?x 188)))
   =>)

(defrule rule-189
   (data (value ?x&:(eq ?x 189)))
   =>)

(defrule rule-190
   (data (value ?x&:(eq ?x 190)))
   =>)

(defrule rule-191
   (data (value ?x&:(eq ?x 191)))
   =>)

(defrule rule-192
   (data (value ?x&:(eq ?x 192)))
   =>)

(defrule rule-193
   (data (value ?x&:(eq ?x 193)))
   =>)

(defrule rule-194
   (data (value ?x&:(eq ?x 194)))
   =>)

(defrule rule-195
   (data (value ?x&:(eq ?x 195)))
   =>)

(defrule rule-196
   (data (value ?x&:(eq ?x 196)))
   =>)

(defrule rule-197
   (data (value ?x&:(eq ?x 197)))
   =>)

(defrule rule-198
   (data (value ?x&:(eq ?x 198)))
   =>)

(defrule rule-199
   (data (value ?x&:(eq ?x 199)))
   =>)

(defrule rule-200
   (data (value ?x&:(eq ?x 200)))
   =>)

(defrule rule-201
   (data (value ?x&:(eq ?x 201)))
   =>)

(defrule rule-202
   (data (value ?x&:(eq ?x 202)))
   =>)

(defrule rule-203
   (data (value ?x&:(eq ?x 203)))
   =>)

(defrule rule-204
   (data (value ?x&:(eq ?x 204)))
   =>)

(defrule rule-205
   (data (value ?x&:(eq ?x 205)))
   =>)

(defrule rule-206
   (data (value ?x&:(eq ?x 206)))
   =>)

(defrule rule-207
   (data (value ?x&:(eq ?x 207)))
   =>)

(defrule rule-208
   (data (value ?x&:(eq ?x 208)))
   =>)

(defrule rule-209
   (data (value ?x&:(eq ?x 209)))
   =>)

(defrule rule-210
   (data (value ?x&:(eq ?x 210)))
   =>)

(defrule rule-211
   (data (value ?x&:(eq ?x 211)))
   =>)

(defrule rule-212
   (data (value ?x&:(eq ?x 212)))
   =>)

(defrule rule-213
   (data (value ?x&:(eq ?x 213)))
   =>)

(defrule rule-214
   (data (value ?x&:(eq ?x 214)))
   =>)

(defrule rule-215
   (data (value ?x&:(eq ?x 215)))
   =>)

(defrule rule-216
   (data (value ?x&:(eq ?x 216)))
   =>)

(defrule rule-217
   (data (value ?x&:(eq ?x 217)))
   =>)

(defrule rule-218
   (data (value ?x&:(eq ?x 218)))
   =>)

(defrule rule-219
   (data (value ?x&:(eq ?x 219)))
   =>)

(defrule rule-220
   (data (value ?x&:(eq ?x 220)))
   =>)

(defrule rule-221
   (data (value ?x&:(eq ?x 221)))
   =>)

(defrule rule-222
   (data (value ?x&:(eq ?x 222)))
   =>)

(defrule rule-223
   (data (value ?x&:(eq ?x 223)))
   =>)

(defrule rule-224
   (data (value ?x&:(eq ?x 224)))
   =>)

(defrule rule-225
   (data (value ?x&:(eq ?x 225)))
   =>)

(defrule rule-226
   (data (value ?x&:(eq ?x 226)))
   =>)

(defrule rule-227
   (data (value ?x&:(eq ?x 227)))
   =>)

(defrule rule-228
   (data (value ?x&:(eq ?x 228)))
   =>)

(defrule rule-229
   (data (value ?x&:(eq ?x 229)))
   =>)

(defrule rule-230
   (data (value ?x&:(eq ?x 230)))
   =>)

(defrule rule-231
   (data (value ?x&:(eq ?x 231)))
   =>)

(defrule rule-232
   (data (value ?x&:(eq ?x 232)))
   =>)

(defrule rule-233
   (data (value ?x&:(eq ?x 233)))
   =>)

(defrule rule-234
   (data (value ?x&:(eq ?x 234)))
   =>)

(defrule rule-235
   (data (value ?x&:(eq ?x 235)))
   =>)

(defrule rule-236
   (data (value ?x&:(eq ?x 236)))
   =>)

(defrule rule-237
   (data (value ?x&:(eq ?x 237)))
   =>)

(defrule rule-238
   (data (value ?x&:(eq ?x 238)))
   =>)

(defrule rule-239
   (data (value ?x&:(eq ?x 239)))
   =>)

(defrule rule-240
   (data (value ?x&:(eq ?x 240)))
   =>)

(defrule rule-241
   (data (value ?x&:(eq ?x 241)))
   =>)

(defrule rule-242
   (data (value ?x&:(eq ?x 242)))
   =>)

(defrule rule-243
   (data (value ?x&:(eq ?x 243)))
   =>)

(defrule rule-244
   (data (value ?x&:(eq ?x 244)))
   =>)

(defrule rule-245
   (data (value ?x&:(eq ?x 245)))
   =>)

(defrule rule-246
   (data (value ?x&:(eq ?x 246)))
   =>)

(defrule rule-247
   (data (value ?x&:(eq ?x 247)))
   =>)

(defrule rule-248
   (data (value ?x&:(eq ?x 248)))
   =>)

(defrule rule-249
   (data (value ?x&:(eq ?x 249)))
   =>)

(defrule rule-250
   (data (value ?x&:(eq ?x 250)))
   =>)

(defrule rule-251
   (data (value ?x&:(eq ?x 251)))
   =>)

(defrule rule-252
   (data (value ?x&:(eq ?x 252)))
   =>)

(defrule rule-253
   (data (value ?x&:(eq ?x 253)))
   =>)

(defrule rule-254
   (data (value ?x&:(eq ?x 254)))
   =>)

(defrule rule-255
   (data (value ?x&:(eq ?x 255)))
   =>)

(defrule rule-256
   (data (value ?x&:(eq ?x 256)))
   =>)

(defrule rule-257
   (data (value ?x&:(eq ?x 257)))
   =>)

(defrule rule-258
   (data (value ?x&:(eq ?x 258)))
   =>)

(defrule rule-259
   (data (value ?x&:(eq ?x 259)))
   =>)

(defrule rule-260
   (data (value ?x&:(eq ?x 260)))
   =>)

(defrule rule-261
   (data (value ?x&:(eq ?x 261)))
   =>)

(defrule rule-262
   (data (value ?x&:(eq ?x 262)))
   =>)

(defrule rule-263
   (data (value ?x&:(eq ?x 263)))
   =>)

(defrule rule-264
   (data (value ?x&:(eq ?x 264)))
   =>)

(defrule rule-265
   (data (value ?x&:(eq ?x 265)))
   =>)

(defrule rule-266
   (data (value ?x&:(eq ?x 266)))
   =>)

(defrule rule-267
   (data (value ?x&:(eq ?x 267)))
   =>)

(defrule rule-268
   (data (value ?x&:(eq ?x 268)))
   =>)

(defrule rule-269
   (data (value ?x&:(eq ?x 269)))
   =>)

(defrule rule-270
   (data (value ?x&:(eq ?x 270)))
   =>)

(defrule rule-271
   (data (value ?x&:(eq ?x 271)))
   =>)

(defrule rule-272
   (data (value ?x&:(eq ?x 272)))
   =>)

(defrule rule-273
   (data (value ?x&:(eq ?x 273)))
   =>)

(defrule rule-274
   (data (value ?x&:(eq ?x 274)))
   =>)

(defrule rule-275
   (data (value ?x&:(eq ?x 275)))
   =>)

(defrule rule-276
   (data (value ?x&:(eq ?x 276)))
   =>)

(defrule rule-277
   (data (value ?x&:(eq ?x 277)))
   =>)

(defrule rule-278
   (data (value ?x&:(eq ?x 278)))
   =>)

(defrule rule-279
   (data (value ?x&:(eq ?x 279)))
   =>)

(defrule rule-280
   (data (value ?x&:(eq ?x 280)))
   =>)

(defrule rule-281
   (data (value ?x&:(eq ?x 281)))
   =>)

(defrule rule-282
   (data (value ?x&:(eq ?x 282)))
   =>)

(defrule rule-283
   (data (value ?x&:(eq ?x 283)))
   =>)

(defrule rule-284
   (data (value ?x&:(eq ?x 284)))
   =>)

(defrule rule-285
   (data (value ?x&:(eq ?x 285)))
   =>)

(defrule rule-286
   (data (value ?x&:(eq ?x 286)))
   =>)

(defrule rule-287
   (data (value ?x&:(eq ?x 287)))
   =>)

(defrule rule-288
   (data (value ?x&:(eq ?x 288)))
   =>)

(defrule rule-289
   (data (value ?x&:(eq ?x 289)))
   =>)

(defrule rule-290
   (data (value ?x&:(eq ?x 290)))
   =>)

(defrule rule-291
   (data (value ?x&:(eq ?x 291)))
   =>)

(defrule rule-292
   (data (value ?x&:(eq ?x 292)))
   =>)

(defrule rule-293
   (data (value ?x&:(eq ?x 293)))
   =>)

(defrule rule-294
   (data (value ?x&:(eq ?x 294)))
   =>)

(defrule rule-295
   (data (value ?x&:(eq ?x 295)))
   =>)

(defrule rule-296
   (data (value ?x&:(eq ?x 296)))
   =>)

(defrule rule-297
   (data (value ?x&:(eq ?x 297)))
   =>)

(defrule rule-298
   (data (value ?x&:(eq ?x 298)))
   =>)

(defrule rule-299
   (data (value ?x&:(eq ?x 299)))
   =>)

(defrule rule-300
   (data (value ?x&:(eq ?x 300)))
   =>)

(defrule rule-301
   (data (value ?x&:(eq ?x 301)))
   =>)

(defrule rule-302
   (data (value ?x&:(eq ?x 302)))
   =>)

(defrule rule-303
   (data (value ?x&:(eq ?x 303)))
   =>)

(defrule rule-304
   (data (value ?x&:(eq ?x 304)))
   =>)

(defrule rule-305
   (data (value ?x&:(eq ?x 305)))
   =>)

(defrule rule-306
   (data (value ?x&:(eq ?x 306)))
   =>)

(defrule rule-307
   (data (value ?x&:(eq ?x 307)))
   =>)

(defrule rule-308
   (data (value ?x&:(eq ?x 308)))
   =>)

(defrule rule-309
   (data (value ?x&:(eq ?x 309)))
   =>)

(defrule rule-310
   (data (value ?x&:(eq ?x 310)))
   =>)

(defrule rule-311
   (data (value ?x&:(eq ?x 311)))
   =>)

(defrule rule-312
   (data (value ?x&:(eq ?x 312)))
   =>)

(defrule rule-313
   (data (value ?x&:(eq ?x 313)))
   =>)

(defrule rule-314
   (data (value ?x&:(eq ?x 314)))
   =>)

(defrule rule-315
   (data (value ?x&:(eq ?x 315)))
   =>)

(defrule rule-316
   (data (value ?x&:(eq ?x 316)))
   =>)

(defrule rule-317
   (data (value ?x&:(eq ?x 317)))
   =>)

(defrule rule-318
   (data (value ?x&:(eq ?x 318)))
   =>)

(defrule rule-319
   (data (value ?x&:(eq ?x 319)))
   =>)

(defrule rule-320
   (data (value ?x&:(eq ?x 320)))
   =>)

(defrule rule-321
   (data (value ?x&:(eq ?x 321)))
   =>)

(defrule rule-322
   (data (value ?x&:(eq ?x 322)))
   =>)

(defrule rule-323
   (data (value ?x&:(eq ?x 323)))
   =>)

(defrule rule-324
   (data (value ?x&:(eq ?x 324)))
   =>)

(defrule rule-325
   (data (value ?x&:(eq ?x 325)))
   =>)

(defrule rule-326
   (data (value ?x&:(eq ?x 326)))
   =>)

(defrule rule-327
   (data (value ?x&:(eq ?x 327)))
   =>)

(defrule rule-328
   (data (value ?x&:(eq ?x 328)))
   =>)

(defrule rule-329
   (data (value ?x&:(eq ?x 329)))
   =>)

(defrule rule-330
   (data (value ?x&:(eq ?x 330)))
   =>)

(defrule rule-331
   (data (value ?x&:(eq ?x 331)))
   =>)

(defrule rule-332
   (data (value ?x&:(eq ?x 332)))
   =>)

(defrule rule-333
   (data (value ?x&:(eq ?x 333)))
   =>)

(defrule rule-334
   (data (value ?x&:(eq ?x 334)))
   =>)

(defrule rule-335
   (data (value ?x&:(eq ?x 335)))
   =>)

(defrule rule-336
   (data (value ?x&:(eq ?x 336)))
   =>)

(defrule rule-337
   (data (value ?x&:(eq ?x 337)))
   =>)

(defrule rule-338
   (data (value ?x&:(eq ?x 338)))
   =>)

(defrule rule-339
   (data (value ?x&:(eq ?x 339)))
   =>)

(defrule rule-340
   (data (value ?x&:(eq ?x 340)))
   =>)

(defrule rule-341
   (data (value ?x&:(eq ?x 341)))
   =>)

(defrule rule-342
   (data (value ?x&:(eq ?x 342)))
   =>)

(defrule rule-343
   (data (value ?x&:(eq ?x 343)))
   =>)

(defrule rule-344
   (data (value ?x&:(eq ?x 344)))
   =>)

(defrule rule-345
   (data (value ?x&:(eq ?x 345)))
   =>)

(defrule rule-346
   (data (value ?x&:(eq ?x 346)))
   =>)

(defrule rule-347
   (data (value ?x&:(eq ?x 347)))
   =>)

(defrule rule-348
   (data (value ?x&:(eq ?x 348)))
   =>)

(defrule rule-349
   (data (value ?x&:(eq ?x 349)))
   =>)

(defrule rule-350
   (data (value ?x&:(eq ?x 350)))
   =>)

(defrule rule-351
   (data (value ?x&:(eq ?x 351)))
   =>)

(defrule rule-352
   (data (value ?x&:(eq ?x 352)))
   =>)

(defrule rule-353
   (data (value ?x&:(eq ?x 353)))
   =>)

(defrule rule-354
   (data (value ?x&:(eq ?x 354)))
   =>)

(defrule rule-355
   (data (value ?x&:(eq ?x 355)))
   =>)

(defrule rule-356
   (data (value ?x&:(eq ?x 356)))
   =>)

(defrule rule-357
   (data (value ?x&:(eq ?x 357)))
   =>)

(defrule rule-358
   (data (value ?x&:(eq ?x 358)))
   =>)

(defrule rule-359
   (data (value ?x&:(eq ?x 359)))
   =>)

(defrule rule-360
   (data (value ?x&:(eq ?x 360)))
   =>)

(defrule rule-361
   (data (value ?x&:(eq ?x 361)))
   =>)

(defrule rule-362
   (data (value ?x&:(eq ?x 362)))
   =>)

(defrule rule-363
   (data (value ?x&:(eq ?x 363)))
   =>)

(defrule rule-364
   (data (value ?x&:(eq ?x 364)))
   =>)

(defrule rule-365
   (data (value ?x&:(eq ?x 365)))
   =>)

(defrule rule-366
   (data (value ?x&:(eq ?x 366)))
   =>)

(defrule rule-367
   (data (value ?x&:(eq ?x 367)))
   =>)

(defrule rule-368
   (data (value ?x&:(eq ?x 368)))
   =>)

(defrule rule-369
   (data (value ?x&:(eq ?x 369)))
   =>)

(defrule rule-370
   (data (value ?x&:(eq ?x 370)))
   =>)

(defrule rule-371
   (data (value ?x&:(eq ?x 371)))
   =>)

(defrule rule-372
   (data (value ?x&:(eq ?x 372)))
   =>)

(defrule rule-373
   (data (value ?x&:(eq ?x 373)))
   =>)

(defrule rule-374
   (data (value ?x&:(eq ?x 374)))
   =>)

(defrule rule-375
   (data (value ?x&:(eq ?x 375)))
   =>)

(defrule rule-376
   (data (value ?x&:(eq ?x 376)))
   =>)

(defrule rule-377
   (data (value ?x&:(eq ?x 377)))
   =>)

(defrule rule-378
   (data (value ?x&:(eq ?x 378)))
   =>)

(defrule rule-379
   (data (value ?x&:(eq ?x 379)))
   =>)

(defrule rule-380
   (data (value ?x&:(eq ?x 380)))
   =>)

(defrule rule-381
   (data (value ?x&:(eq ?x 381)))
   =>)

(defrule rule-382
   (data (value ?x&:(eq ?x 382)))
   =>)

(defrule rule-383
   (data (value ?x&:(eq ?x 383)))
   =>)

(defrule rule-384
   (data (value ?x&:(eq ?x 384)))
   =>)

(defrule rule-385
   (data (value ?x&:(eq ?x 385)))
   =>)

(defrule rule-386
   (data (value ?x&:(eq ?x 386)))
   =>)

(defrule rule-387
   (data (value ?x&:(eq ?x 387)))
   =>)

(defrule rule-388
   (data (value ?x&:(eq ?x 388)))
   =>)

(defrule rule-389
   (data (value ?x&:(eq ?x 389)))
   =>)

(defrule rule-390
   (data (value ?x&:(eq ?x 390)))
   =>)

(defrule rule-391
   (data (value ?x&:(eq ?x 391)))
   =>)

(defrule rule-392
   (data (value ?x&:(eq ?x 392)))
   =>)

(defrule rule-393
   (data (value ?x&:(eq ?x 393)))
   =>)

(defrule rule-394
   (data (value ?x&:(eq ?x 394)))
   =>)

(defrule rule-395
   (data (value ?x&:(eq ?x 395)))
   =>)

(defrule rule-396
   (data (value ?x&:(eq ?x 396)))
   =>)

(defrule rule-397
   (data (value ?x&:(eq ?x 397)))
   =>)

(defrule rule-398
   (data (value ?x&:(eq ?x 398)))
   =>)

(defrule rule-399
   (data (value ?x&:(eq ?x 399)))
   =>)

(defrule rule-400
   (data (value ?x&:(eq ?x 400)))
   =>)

(defrule rule-401
   (data (value ?x&:(eq ?x 401)))
   =>)

(defrule rule-402
   (data (value ?x&:(eq ?x 402)))
   =>)

(defrule rule-403
   (data (value ?x&:(eq ?x 403)))
   =>)

(defrule rule-404
   (data (value ?x&:(eq ?x 404)))
   =>)

(defrule rule-405
   (data (value ?x&:(eq ?x 405)))
   =>)

(defrule rule-406
   (data (value ?x&:(eq ?x 406)))
   =>)

(defrule rule-407
   (data (value ?x&:(eq ?x 407)))
   =>)

(defrule rule-408
   (data (value ?x&:(eq ?x 408)))
   =>)

(defrule rule-409
   (data (value ?x&:(eq ?x 409)))
   =>)

(defrule rule-410
   (data (value ?x&:(eq ?x 410)))
   =>)

(defrule rule-411
   (data (value ?x&:(eq ?x 411)))
   =>)

(defrule rule-412
   (data (value ?x&:(eq ?x 412)))
   =>)

(defrule rule-413
   (data (value ?x&:(eq ?x 413)))
   =>)

(defrule rule-414
   (data (value ?x&:(eq ?x 414)))
   =>)

(defrule rule-415
   (data (value ?x&:(eq ?x 415)))
   =>)

(defrule rule-416
   (data (value ?x&:(eq ?x 416)))
   =>)

(defrule rule-417
   (data (value ?x&:(eq ?x 417)))
   =>)

(defrule rule-418
   (data (value ?x&:(eq ?x 418)))
   =>)

(defrule rule-419
   (data (value ?x&:(eq ?x 419)))
   =>)

(defrule rule-420
   (data (value ?x&:(eq ?x 420)))
   =>)

(defrule rule-421
   (data (value ?x&:(eq ?x 421)))
   =>)

(defrule rule-422
   (data (value ?x&:(eq ?x 422)))
   =>)

(defrule rule-423
   (data (value ?x&:(eq ?x 423)))
   =>)

(defrule rule-424
   (data (value ?x&:(eq ?x 424)))
   =>)

(defrule rule-425
   (data (value ?x&:(eq ?x 425)))
   =>)

(defrule rule-426
   (data (value ?x&:(eq ?x 426)))
   =>)

(defrule rule-427
   (data (value ?x&:(eq ?x 427)))
   =>)

(defrule rule-428
   (data (value ?x&:(eq ?x 428)))
   =>)

(defrule rule-429
   (data (value ?x&:(eq ?x 429)))
   =>)

(defrule rule-430
   (data (value ?x&:(eq ?x 430)))
   =>)

(defrule rule-431
   (data (value ?x&:(eq ?x 431)))
   =>)

(defrule rule-432
   (data (value ?x&:(eq ?x 432)))
   =>)

(defrule rule-433
   (data (value ?x&:(eq ?x 433)))
   =>)

(defrule rule-434
   (data (value ?x&:(eq ?x 434)))
   =>)

(defrule rule-435
   (data (value ?x&:(eq ?x 435)))
   =>)

(defrule rule-436
   (data (value ?x&:(eq ?x 436)))
   =>)

(defrule rule-437
   (data (value ?x&:(eq ?x 437)))
   =>)

(defrule rule-438
   (data (value ?x&:(eq ?x 438)))
   =>)

(defrule rule-439
   (data (value ?x&:(eq ?x 439)))
   =>)

(defrule rule-440
   (data (value ?x&:(eq ?x 440)))
   =>)

(defrule rule-441
   (data (value ?x&:(eq ?x 441)))
   =>)

(defrule rule-442
   (data (value ?x&:(eq ?x 442)))
   =>)

(defrule rule-443
   (data (value ?x&:(eq ?x 443)))
   =>)

(defrule rule-444
   (data (value ?x&:(eq ?x 444)))
   =>)

(defrule rule-445
   (data (value ?x&:(eq ?x 445)))
   =>)

(defrule rule-446
   (data (value ?x&:(eq ?x 446)))
   =>)

(defrule rule-447
   (data (value ?x&:(eq ?x 447)))
   =>)

(defrule rule-448
   (data (value ?x&:(eq ?x 448)))
   =>)

(defrule rule-449
   (data (value ?x&:(eq ?x 449)))
   =>)

(defrule rule-450
   (data (value ?x&:(eq ?x 450)))
   =>)

(defrule rule-451
   (data (value ?x&:(eq ?x 451)))
   =>)

(defrule rule-452
   (data (value ?x&:(eq ?x 452)))
   =>)

(defrule rule-453
   (data (value ?x&:(eq ?x 453)))
   =>)

(defrule rule-454
   (data (value ?x&:(eq ?x 454)))
   =>)

(defrule rule-455
   (data (value ?x&:(eq ?x 455)))
   =>)

(defrule rule-456
   (data (value ?x&:(eq ?x 456)))
   =>)

(defrule rule-457
   (data (value ?x&:(eq ?x 457)))
   =>)

(defrule rule-458
   (data (value ?x&:(eq ?x 458)))
   =>)

(defrule rule-459
   (data (value ?x&:(eq ?x 459)))
   =>)

(defrule rule-460
   (data (value ?x&:(eq ?x 460)))
   =>)

(defrule rule-461
   (data (value ?x&:(eq ?x 461)))
   =>)

(defrule rule-462
   (data (value ?x&:(eq ?x 462)))
   =>)

(defrule rule-463
   (data (value ?x&:(eq ?x 463)))
   =>)

(defrule rule-464
   (data (value ?x&:(eq ?x 464)))
   =>)

(defrule rule-465
   (data (value ?x&:(eq ?x 465)))
   =>)

(defrule rule-466
   (data (value ?x&:(eq ?x 466)))
   =>)

(defrule rule-467
   (data (value ?x&:(eq ?x 467)))
   =>)

(defrule rule-468
   (data (value ?x&:(eq ?x 468)))
   =>)

(defrule rule-469
   (data (value ?x&:(eq ?x 469)))
   =>)

(defrule rule-470
   (data (value ?x&:(eq ?x 470)))
   =>)

(defrule rule-471
   (data (value ?x&:(eq ?x 471)))
   =>)

(defrule rule-472
   (data (value ?x&:(eq ?x 472)))
   =>)

(defrule rule-473
   (data (value ?x&:(eq ?x 473)))
   =>)

(defrule rule-474
   (data (value ?x&:(eq ?x 474)))
   =>)

(defrule rule-475
   (data (value ?x&:(eq ?x 475)))
   =>)

(defrule rule-476
   (data (value ?x&:(eq ?x 476)))
   =>)

(defrule rule-477
   (data (value ?x&:(eq ?x 477)))
   =>)

(defrule rule-478
   (data (value ?x&:(eq ?x 478)))
   =>)

(defrule rule-479
   (data (value ?x&:(eq ?x 479)))
   =>)

(defrule rule-480
   (data (value ?x&:(eq ?x 480)))
   =>)

(defrule rule-481
   (data (value ?x&:(eq ?x 481)))
   =>)

(defrule rule-482
   (data (value ?x&:(eq ?x 482)))
   =>)

(defrule rule-483
   (data (value ?x&:(eq ?x 483)))
   =>)

(defrule rule-484
   (data (value ?x&:(eq ?x 484)))
   =>)

(defrule rule-485
   (data (value ?x&:(eq ?x 485)))
   =>)

(defrule rule-486
   (data (value ?x&:(eq ?x 486)))
   =>)

(defrule rule-487
   (data (value ?x&:(eq ?x 487)))
   =>)

(defrule rule-488
   (data (value ?x&:(eq ?x 488)))
   =>)

(defrule rule-489
   (data (value ?x&:(eq ?x 489)))
   =>)

(defrule rule-490
   (data (value ?x&:(eq ?x 490)))
   =>)

(defrule rule-491
   (data (value ?x&:(eq ?x 491)))
   =>)

(defrule rule-492
   (data (value ?x&:(eq ?x 492)))
   =>)

(defrule rule-493
   (data (value ?x&:(eq ?x 493)))
   =>)

(defrule rule-494
   (data (value ?x&:(eq ?x 494)))
   =>)

(defrule rule-495
   (data (value ?x&:(eq ?x 495)))
   =>)

(defrule rule-496
   (data (value ?x&:(eq ?x 496)))
   =>)

(defrule rule-497
   (data (value ?x&:(eq ?x 497)))
   =>)

(defrule rule-498
   (data (value ?x&:(eq ?x 498)))
   =>)

(defrule rule-499
   (data (value ?x&:(eq ?x 499)))
   =>)

(defrule rule-500
   (data (value ?x&:(eq ?x 500)))
   =>)

(defrule rule-501
   (data (value ?x&:(eq ?x 501)))
   =>)

(defrule rule-502
   (data (value ?x&:(eq ?x 502)))
   =>)

(defrule rule-503
   (data (value ?x&:(eq ?x 503)))
   =>)

(defrule rule-504
   (data (value ?x&:(eq ?x 504)))
   =>)

(defrule rule-505
   (data (value ?x&:(eq ?x 505)))
   =>)

(defrule rule-506
   (data (value ?x&:(eq ?x 506)))
   =>)

(defrule rule-507
   (data (value ?x&:(eq ?x 507)))
   =>)

(defrule rule-508
   (data (value ?x&:(eq ?x 508)))
   =>)

(defrule rule-509
   (data (value ?x&:(eq ?x 509)))
   =>)

(defrule rule-510
   (data (value ?x&:(eq ?x 510)))
   =>)

(defrule rule-511
   (data (value ?x&:(eq ?x 511)))
   =>)

(defrule rule-512
   (data (value ?x&:(eq ?x 512)))
   =>)

(defrule rule-513
   (data (value ?x&:(eq ?x 513)))
   =>)

(defrule rule-514
   (data (value ?x&:(eq ?x 514)))
   =>)

(defrule rule-515
   (data (value ?x&:(eq ?x 515)))
   =>)

(defrule rule-516
   (data (value ?x&:(eq ?x 516)))
   =>)

(defrule rule-517
   (data (value ?x&:(eq ?x 517)))
   =>)

(defrule rule-518
   (data (value ?x&:(eq ?x 518)))
   =>)

(defrule rule-519
   (data (value ?x&:(eq ?x 519)))
   =>)

(defrule rule-520
   (data (value ?x&:(eq ?x 520)))
   =>)

(defrule rule-521
   (data (value ?x&:(eq ?x 521)))
   =>)

(defrule rule-522
   (data (value ?x&:(eq ?x 522)))
   =>)

(defrule rule-523
   (data (value ?x&:(eq ?x 523)))
   =>)

(defrule rule-524
   (data (value ?x&:(eq ?x 524)))
   =>)

(defrule rule-525
   (data (value ?x&:(eq ?x 525)))
   =>)

(defrule rule-526
   (data (value ?x&:(eq ?x 526)))
   =>)

(defrule rule-527
   (data (value ?x&:(eq ?x 527)))
   =>)

(defrule rule-528
   (data (value ?x&:(eq ?x 528)))
   =>)

(defrule rule-529
   (data (value ?x&:(eq ?x 529)))
   =>)

(defrule rule-530
   (data (value ?x&:(eq ?x 530)))
   =>)

(defrule rule-531
   (data (value ?x&:(eq ?x 531)))
   =>)

(defrule rule-532
   (data (value ?x&:(eq ?x 532)))
   =>)

(defrule rule-533
   (data (value ?x&:(eq ?x 533)))
   =>)

(defrule rule-534
   (data (value ?x&:(eq ?x 534)))
   =>)

(defrule rule-535
   (data (value ?x&:(eq ?x 535)))
   =>)

(defrule rule-536
   (data (value ?x&:(eq ?x 536)))
   =>)

(defrule rule-537
   (data (value ?x&:(eq ?x 537)))
   =>)

(defrule rule-538
   (data (value ?x&:(eq ?x 538)))
   =>)

(defrule rule-539
   (data (value ?x&:(eq ?x 539)))
   =>)

(defrule rule-540
   (data (value ?x&:(eq ?x 540)))
   =>)

(defrule rule-541
   (data (value ?x&:(eq ?x 541)))
   =>)

(defrule rule-542
   (data (value ?x&:(eq ?x 542)))
   =>)

(defrule rule-543
   (data (value ?x&:(eq ?x 543)))
   =>)

(defrule rule-544
   (data (value ?x&:(eq ?x 544)))
   =>)

(defrule rule-545
   (data (value ?x&:(eq ?x 545)))
   =>)

(defrule rule-546
   (data (value ?x&:(eq ?x 546)))
   =>)

(defrule rule-547
   (data (value ?x&:(eq ?x 547)))
   =>)

(defrule rule-548
   (data (value ?x&:(eq ?x 548)))
   =>)

(defrule rule-549
   (data (value ?x&:(eq ?x 549)))
   =>)

(defrule rule-550
   (data (value ?x&:(eq ?x 550)))
   =>)

(defrule rule-551
   (data (value ?x&:(eq ?x 551)))
   =>)

(defrule rule-552
   (data (value ?x&:(eq ?x 552)))
   =>)

(defrule rule-553
   (data (value ?x&:(eq ?x 553)))
   =>)

(defrule rule-554
   (data (value ?x&:(eq ?x 554)))
   =>)

(defrule rule-555
   (data (value ?x&:(eq ?x 555)))
   =>)

(defrule rule-556
   (data (value ?x&:(eq ?x 556)))
   =>)

(defrule rule-557
   (data (value ?x&:(eq ?x 557)))
   =>)

(defrule rule-558
   (data (value ?x&:(eq ?x 558)))
   =>)

(defrule rule-559
   (data (value ?x&:(eq ?x 559)))
   =>)

(defrule rule-560
   (data (value ?x&:(eq ?x 560)))
   =>)

(defrule rule-561
   (data (value ?x&:(eq ?x 561)))
   =>)

(defrule rule-562
   (data (value ?x&:(eq ?x 562)))
   =>)

(defrule rule-563
   (data (value ?x&:(eq ?x 563)))
   =>)

(defrule rule-564
   (data (value ?x&:(eq ?x 564)))
   =>)

(defrule rule-565
   (data (value ?x&:(eq ?x 565)))
   =>)

(defrule rule-566
   (data (value ?x&:(eq ?x 566)))
   =>)

(defrule rule-567
   (data (value ?x&:(eq ?x 567)))
   =>)

(defrule rule-568
   (data (value ?x&:(eq ?x 568)))
   =>)

(defrule rule-569
   (data (value ?x&:(eq ?x 569)))
   =>)

(defrule rule-570
   (data (value ?x&:(eq ?x 570)))
   =>)

(defrule rule-571
   (data (value ?x&:(eq ?x 571)))
   =>)

(defrule rule-572
   (data (value ?x&:(eq ?x 572)))
   =>)

(defrule rule-573
   (data (value ?x&:(eq ?x 573)))
   =>)

(defrule rule-574
   (data (value ?x&:(eq ?x 574)))
   =>)

(defrule rule-575
   (data (value ?x&:(eq ?x 575)))
   =>)

(defrule rule-576
   (data (value ?x&:(eq ?x 576)))
   =>)

(defrule rule-577
   (data (value ?x&:(eq ?x 577)))
   =>)

(defrule rule-578
   (data (value ?x&:(eq ?x 578)))
   =>)

(defrule rule-579
   (data (value ?x&:(eq ?x 579)))
   =>)

(defrule rule-580
   (data (value ?x&:(eq ?x 580)))
   =>)

(defrule rule-581
   (data (value ?x&:(eq ?x 581)))
   =>)

(defrule rule-582
   (data (value ?x&:(eq ?x 582)))
   =>)

(defrule rule-583
   (data (value ?x&:(eq ?x 583)))
   =>)

(defrule rule-584
   (data (value ?x&:(eq ?x 584)))
   =>)

(defrule rule-585
   (data (value ?x&:(eq ?x 585)))
   =>)

(defrule rule-586
   (data (value ?x&:(eq ?x 586)))
   =>)

(defrule rule-587
   (data (value ?x&:(eq ?x 587)))
   =>)

(defrule rule-588
   (data (value ?x&:(eq ?x 588)))
   =>)

(defrule rule-589
   (data (value ?x&:(eq ?x 589)))
   =>)

(defrule rule-590
   (data (value ?x&:(eq ?x 590)))
   =>)

(defrule rule-591
   (data (value ?x&:(eq ?x 591)))
   =>)

(defrule rule-592
   (data (value ?x&:(eq ?x 592)))
   =>)

(defrule rule-593
   (data (value ?x&:(eq ?x 593)))
   =>)

(defrule rule-594
   (data (value ?x&:(eq ?x 594)))
   =>)

(defrule rule-595
   (data (value ?x&:(eq ?x 595)))
   =>)

(defrule rule-596
   (data (value ?x&:(eq ?x 596)))
   =>)

(defrule rule-597
   (data (value ?x&:(eq ?x 597)))
   =>)

(defrule rule-598
   (data (value ?x&:(eq ?x 598)))
   =>)

(defrule rule-599
   (data (value ?x&:(eq ?x 599)))
   =>)

(defrule rule-600
   (data (value ?x&:(eq ?x 600)))
   =>)

(defrule rule-601
   (data (value ?x&:(eq ?x 601)))
   =>)

(defrule rule-602
   (data (value ?x&:(eq ?x 602)))
   =>)

(defrule rule-603
   (data (value ?x&:(eq ?x 603)))
   =>)

(defrule rule-604
   (data (value ?x&:(eq ?x 604)))
   =>)

(defrule rule-605
   (data (value ?x&:(eq ?x 605)))
   =>)

(defrule rule-606
   (data (value ?x&:(eq ?x 606)))
   =>)

(defrule rule-607
   (data (value ?x&:(eq ?x 607)))
   =>)

(defrule rule-608
   (data (value ?x&:(eq ?x 608)))
   =>)

(defrule rule-609
   (data (value ?x&:(eq ?x 609)))
   =>)

(defrule rule-610
   (data (value ?x&:(eq ?x 610)))
   =>)

(defrule rule-611
   (data (value ?x&:(eq ?x 611)))
   =>)

(defrule rule-612
   (data (value ?x&:(eq ?x 612)))
   =>)

(defrule rule-613
   (data (value ?x&:(eq ?x 613)))
   =>)

(defrule rule-614
   (data (value ?x&:(eq ?x 614)))
   =>)

(defrule rule-615
   (data (value ?x&:(eq ?x 615)))
   =>)

(defrule rule-616
   (data (value ?x&:(eq ?x 616)))
   =>)

(defrule rule-617
   (data (value ?x&:(eq ?x 617)))
   =>)

(defrule rule-618
   (data (value ?x&:(eq ?x 618)))
   =>)

(defrule rule-619
   (data (value ?x&:(eq ?x 619)))
   =>)

(defrule rule-620
   (data (value ?x&:(eq ?x 620)))
   =>)

(defrule rule-621
   (data (value ?x&:(eq ?x 621)))
   =>)

(defrule rule-622
   (data (value ?x&:(eq ?x 622)))
   =>)

(defrule rule-623
   (data (value ?x&:(eq ?x 623)))
   =>)

(defrule rule-624
   (data (value ?x&:(eq ?x 624)))
   =>)

(defrule rule-625
   (data (value ?x&:(eq ?x 625)))
   =>)

(defrule rule-626
   (data (value ?x&:(eq ?x 626)))
   =>)

(defrule rule-627
   (data (value ?x&:(eq ?x 627)))
   =>)

(defrule rule-628
   (data (value ?x&:(eq ?x 628)))
   =>)

(defrule rule-629
   (data (value ?x&:(eq ?x 629)))
   =>)

(defrule rule-630
   (data (value ?x&:(eq ?x 630)))
   =>)

(defrule rule-631
   (data (value ?x&:(eq ?x 631)))
   =>)

(defrule rule-632
   (data (value ?x&:(eq ?x 632)))
   =>)

(defrule rule-633
   (data (value ?x&:(eq ?x 633)))
   =>)

(defrule rule-634
   (data (value ?x&:(eq ?x 634)))
   =>)

(defrule rule-635
   (data (value ?x&:(eq ?x 635)))
   =>)

(defrule rule-636
   (data (value ?x&:(eq ?x 636)))
   =>)

(defrule rule-637
   (data (value ?x&:(eq ?x 637)))
   =>)

(defrule rule-638
   (data (value ?x&:(eq ?x 638)))
   =>)

(defrule rule-639
   (data (value ?x&:(eq ?x 639)))
   =>)

(defrule rule-640
   (data (value ?x&:(eq ?x 640)))
   =>)

(defrule rule-641
   (data (value ?x&:(eq ?x 641)))
   =>)

(defrule rule-642
   (data (value ?x&:(eq ?x 642)))
   =>)

(defrule rule-643
   (data (value ?x&:(eq ?x 643)))
   =>)

(defrule rule-644
   (data (value ?x&:(eq ?x 644)))
   =>)

(defrule rule-645
   (data (value ?x&:(eq ?x 645)))
   =>)

(defrule rule-646
   (data (value ?x&:(eq ?x 646)))
   =>)

(defrule rule-647
   (data (value ?x&:(eq ?x 647)))
   =>)

(defrule rule-648
   (data (value ?x&:(eq ?x 648)))
   =>)

(defrule rule-649
   (data (value ?x&:(eq ?x 649)))
   =>)

(defrule rule-650
   (data (value ?x&:(eq ?x 650)))
   =>)

(defrule rule-651
   (data (value ?x&:(eq ?x 651)))
   =>)

(defrule rule-652
   (data (value ?x&:(eq ?x 652)))
   =>)

(defrule rule-653
   (data (value ?x&:(eq ?x 653)))
   =>)

(defrule rule-654
   (data (value ?x&:(eq ?x 654)))
   =>)

(defrule rule-655
   (data (value ?x&:(eq ?x 655)))
   =>)

(defrule rule-656
   (data (value ?x&:(eq ?x 656)))
   =>)

(defrule rule-657
   (data (value ?x&:(eq ?x 657)))
   =>)

(defrule rule-658
   (data (value ?x&:(eq ?x 658)))
   =>)

(defrule rule-659
   (data (value ?x&:(eq ?x 659)))
   =>)

(defrule rule-660
   (data (value ?x&:(eq ?x 660)))
   =>)

(defrule rule-661
   (data (value ?x&:(eq ?x 661)))
   =>)

(defrule rule-662
   (data (value ?x&:(eq ?x 662)))
   =>)

(defrule rule-663
   (data (value ?x&:(eq ?x 663)))
   =>)

(defrule rule-664
   (data (value ?x&:(eq ?x 664)))
   =>)

(defrule rule-665
   (data (value ?x&:(eq ?x 665)))
   =>)

(defrule rule-666
   (data (value ?x&:(eq ?x 666)))
   =>)

(defrule rule-667
   (data (value ?x&:(eq ?x 667)))
   =>)

(defrule rule-668
   (data (value ?x&:(eq ?x 668)))
   =>)

(defrule rule-669
   (data (value ?x&:(eq ?x 669)))
   =>)

(defrule rule-670
   (data (value ?x&:(eq ?x 670)))
   =>)

(defrule rule-671
   (data (value ?x&:(eq ?x 671)))
   =>)

(defrule rule-672
   (data (value ?x&:(eq ?x 672)))
   =>)

(defrule rule-673
   (data (value ?x&:(eq ?x 673)))
   =>)

(defrule rule-674
   (data (value ?x&:(eq ?x 674)))
   =>)

(defrule rule-675
   (data (value ?x&:(eq ?x 675)))
   =>)

(defrule rule-676
   (data (value ?x&:(eq ?x 676)))
   =>)

(defrule rule-677
   (data (value ?x&:(eq ?x 677)))
   =>)

(defrule rule-678
   (data (value ?x&:(eq ?x 678)))
   =>)

(defrule rule-679
   (data (value ?x&:(eq ?x 679)))
   =>)

(defrule rule-680
   (data (value ?x&:(eq ?x 680)))
   =>)

(defrule rule-681
   (data (value ?x&:(eq ?x 681)))
   =>)

(defrule rule-682
   (data (value ?x&:(eq ?x 682)))
   =>)

(defrule rule-683
   (data (value ?x&:(eq ?x 683)))
   =>)

(defrule rule-684
   (data (value ?x&:(eq ?x 684)))
   =>)

(defrule rule-685
   (data (value ?x&:(eq ?x 685)))
   =>)

(defrule rule-686
   (data (value ?x&:(eq ?x 686)))
   =>)

(defrule rule-687
   (data (value ?x&:(eq ?x 687)))
   =>)

(defrule rule-688
   (data (value ?x&:(eq ?x 688)))
   =>)

(defrule rule-689
   (data (value ?x&:(eq ?x 689)))
   =>)

(defrule rule-690
   (data (value ?x&:(eq ?x 690)))
   =>)

(defrule rule-691
   (data (value ?x&:(eq ?x 691)))
   =>)

(defrule rule-692
   (data (value ?x&:(eq ?x 692)))
   =>)

(defrule rule-693
   (data (value ?x&:(eq ?x 693)))
   =>)

(defrule rule-694
   (data (value ?x&:(eq ?x 694)))
   =>)

(defrule rule-695
   (data (value ?x&:(eq ?x 695)))
   =>)

(defrule rule-696
   (data (value ?x&:(eq ?x 696)))
   =>)

(defrule rule-697
   (data (value ?x&:(eq ?x 697)))
   =>)

(defrule rule-698
   (data (value ?x&:(eq ?x 698)))
   =>)

(defrule rule-699
   (data (value ?x&:(eq ?x 699)))
   =>)

(defrule rule-700
   (data (value ?x&:(eq ?x 700)))
   =>)


