╙▀<
аЁ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
;
Elu
features"T
activations"T"
Ttype:
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
7
Square
x"T
y"T"
Ttype:
2	
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
О
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48┐╧3
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
╢
Adam/v/siameseOutput/biasVarHandleOp*
_output_shapes
: **

debug_nameAdam/v/siameseOutput/bias/*
dtype0*
shape:**
shared_nameAdam/v/siameseOutput/bias
Г
-Adam/v/siameseOutput/bias/Read/ReadVariableOpReadVariableOpAdam/v/siameseOutput/bias*
_output_shapes
:*
dtype0
╢
Adam/m/siameseOutput/biasVarHandleOp*
_output_shapes
: **

debug_nameAdam/m/siameseOutput/bias/*
dtype0*
shape:**
shared_nameAdam/m/siameseOutput/bias
Г
-Adam/m/siameseOutput/bias/Read/ReadVariableOpReadVariableOpAdam/m/siameseOutput/bias*
_output_shapes
:*
dtype0
└
Adam/v/siameseOutput/kernelVarHandleOp*
_output_shapes
: *,

debug_nameAdam/v/siameseOutput/kernel/*
dtype0*
shape
:*,
shared_nameAdam/v/siameseOutput/kernel
Л
/Adam/v/siameseOutput/kernel/Read/ReadVariableOpReadVariableOpAdam/v/siameseOutput/kernel*
_output_shapes

:*
dtype0
└
Adam/m/siameseOutput/kernelVarHandleOp*
_output_shapes
: *,

debug_nameAdam/m/siameseOutput/kernel/*
dtype0*
shape
:*,
shared_nameAdam/m/siameseOutput/kernel
Л
/Adam/m/siameseOutput/kernel/Read/ReadVariableOpReadVariableOpAdam/m/siameseOutput/kernel*
_output_shapes

:*
dtype0
╧
!Adam/v/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_7/beta/*
dtype0*
shape:Ї*2
shared_name#!Adam/v/batch_normalization_7/beta
Ф
5Adam/v/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_7/beta*
_output_shapes	
:Ї*
dtype0
╧
!Adam/m/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_7/beta/*
dtype0*
shape:Ї*2
shared_name#!Adam/m/batch_normalization_7/beta
Ф
5Adam/m/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_7/beta*
_output_shapes	
:Ї*
dtype0
╥
"Adam/v/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_7/gamma/*
dtype0*
shape:Ї*3
shared_name$"Adam/v/batch_normalization_7/gamma
Ц
6Adam/v/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_7/gamma*
_output_shapes	
:Ї*
dtype0
╥
"Adam/m/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_7/gamma/*
dtype0*
shape:Ї*3
shared_name$"Adam/m/batch_normalization_7/gamma
Ц
6Adam/m/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_7/gamma*
_output_shapes	
:Ї*
dtype0
е
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_1/bias/*
dtype0*
shape:Ї*$
shared_nameAdam/v/dense_1/bias
x
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes	
:Ї*
dtype0
е
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_1/bias/*
dtype0*
shape:Ї*$
shared_nameAdam/m/dense_1/bias
x
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes	
:Ї*
dtype0
░
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape:
шЇ*&
shared_nameAdam/v/dense_1/kernel
Б
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel* 
_output_shapes
:
шЇ*
dtype0
░
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape:
шЇ*&
shared_nameAdam/m/dense_1/kernel
Б
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel* 
_output_shapes
:
шЇ*
dtype0
╧
!Adam/v/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_6/beta/*
dtype0*
shape:ш*2
shared_name#!Adam/v/batch_normalization_6/beta
Ф
5Adam/v/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_6/beta*
_output_shapes	
:ш*
dtype0
╧
!Adam/m/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_6/beta/*
dtype0*
shape:ш*2
shared_name#!Adam/m/batch_normalization_6/beta
Ф
5Adam/m/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_6/beta*
_output_shapes	
:ш*
dtype0
╥
"Adam/v/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_6/gamma/*
dtype0*
shape:ш*3
shared_name$"Adam/v/batch_normalization_6/gamma
Ц
6Adam/v/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_6/gamma*
_output_shapes	
:ш*
dtype0
╥
"Adam/m/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_6/gamma/*
dtype0*
shape:ш*3
shared_name$"Adam/m/batch_normalization_6/gamma
Ц
6Adam/m/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_6/gamma*
_output_shapes	
:ш*
dtype0
Я
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/v/dense/bias/*
dtype0*
shape:ш*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:ш*
dtype0
Я
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *"

debug_nameAdam/m/dense/bias/*
dtype0*
shape:ш*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:ш*
dtype0
к
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense/kernel/*
dtype0*
shape:
Аш*$
shared_nameAdam/v/dense/kernel
}
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel* 
_output_shapes
:
Аш*
dtype0
к
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense/kernel/*
dtype0*
shape:
Аш*$
shared_nameAdam/m/dense/kernel
}
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel* 
_output_shapes
:
Аш*
dtype0
╧
!Adam/v/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_5/beta/*
dtype0*
shape:А*2
shared_name#!Adam/v/batch_normalization_5/beta
Ф
5Adam/v/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_5/beta*
_output_shapes	
:А*
dtype0
╧
!Adam/m/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_5/beta/*
dtype0*
shape:А*2
shared_name#!Adam/m/batch_normalization_5/beta
Ф
5Adam/m/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_5/beta*
_output_shapes	
:А*
dtype0
╥
"Adam/v/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_5/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_5/gamma
Ц
6Adam/v/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_5/gamma*
_output_shapes	
:А*
dtype0
╥
"Adam/m/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_5/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_5/gamma
Ц
6Adam/m/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_5/gamma*
_output_shapes	
:А*
dtype0
и
Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_5/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_5/bias
z
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_5/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_5/bias
z
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes	
:А*
dtype0
╗
Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_5/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_5/kernel
Л
*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*(
_output_shapes
:АА*
dtype0
╗
Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_5/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_5/kernel
Л
*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*(
_output_shapes
:АА*
dtype0
╧
!Adam/v/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_4/beta/*
dtype0*
shape:А*2
shared_name#!Adam/v/batch_normalization_4/beta
Ф
5Adam/v/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_4/beta*
_output_shapes	
:А*
dtype0
╧
!Adam/m/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_4/beta/*
dtype0*
shape:А*2
shared_name#!Adam/m/batch_normalization_4/beta
Ф
5Adam/m/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_4/beta*
_output_shapes	
:А*
dtype0
╥
"Adam/v/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_4/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_4/gamma
Ц
6Adam/v/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_4/gamma*
_output_shapes	
:А*
dtype0
╥
"Adam/m/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_4/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_4/gamma
Ц
6Adam/m/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_4/gamma*
_output_shapes	
:А*
dtype0
и
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_4/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_4/bias
z
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_4/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_4/bias
z
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes	
:А*
dtype0
╗
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_4/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_4/kernel
Л
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*(
_output_shapes
:АА*
dtype0
╗
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_4/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_4/kernel
Л
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*(
_output_shapes
:АА*
dtype0
╧
!Adam/v/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_3/beta/*
dtype0*
shape:А*2
shared_name#!Adam/v/batch_normalization_3/beta
Ф
5Adam/v/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_3/beta*
_output_shapes	
:А*
dtype0
╧
!Adam/m/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_3/beta/*
dtype0*
shape:А*2
shared_name#!Adam/m/batch_normalization_3/beta
Ф
5Adam/m/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_3/beta*
_output_shapes	
:А*
dtype0
╥
"Adam/v/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_3/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_3/gamma
Ц
6Adam/v/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_3/gamma*
_output_shapes	
:А*
dtype0
╥
"Adam/m/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_3/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_3/gamma
Ц
6Adam/m/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_3/gamma*
_output_shapes	
:А*
dtype0
и
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_3/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_3/bias
z
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_3/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_3/bias
z
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes	
:А*
dtype0
╗
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_3/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_3/kernel
Л
*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*(
_output_shapes
:АА*
dtype0
╗
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_3/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_3/kernel
Л
*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*(
_output_shapes
:АА*
dtype0
╧
!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_2/beta/*
dtype0*
shape:А*2
shared_name#!Adam/v/batch_normalization_2/beta
Ф
5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes	
:А*
dtype0
╧
!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_2/beta/*
dtype0*
shape:А*2
shared_name#!Adam/m/batch_normalization_2/beta
Ф
5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes	
:А*
dtype0
╥
"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_2/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_2/gamma
Ц
6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes	
:А*
dtype0
╥
"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_2/gamma/*
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_2/gamma
Ц
6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes	
:А*
dtype0
и
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_2/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_2/bias
z
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_2/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_2/bias
z
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes	
:А*
dtype0
║
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_2/kernel/*
dtype0*
shape:@А*'
shared_nameAdam/v/conv2d_2/kernel
К
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*'
_output_shapes
:@А*
dtype0
║
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_2/kernel/*
dtype0*
shape:@А*'
shared_nameAdam/m/conv2d_2/kernel
К
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*'
_output_shapes
:@А*
dtype0
╬
!Adam/v/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_1/beta/*
dtype0*
shape:@*2
shared_name#!Adam/v/batch_normalization_1/beta
У
5Adam/v/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_1/beta*
_output_shapes
:@*
dtype0
╬
!Adam/m/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_1/beta/*
dtype0*
shape:@*2
shared_name#!Adam/m/batch_normalization_1/beta
У
5Adam/m/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_1/beta*
_output_shapes
:@*
dtype0
╤
"Adam/v/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_1/gamma/*
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_1/gamma
Х
6Adam/v/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_1/gamma*
_output_shapes
:@*
dtype0
╤
"Adam/m/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_1/gamma/*
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_1/gamma
Х
6Adam/m/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_1/gamma*
_output_shapes
:@*
dtype0
з
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_1/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
:@*
dtype0
з
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_1/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
:@*
dtype0
╣
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_1/kernel/*
dtype0*
shape:

@@*'
shared_nameAdam/v/conv2d_1/kernel
Й
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
:

@@*
dtype0
╣
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_1/kernel/*
dtype0*
shape:

@@*'
shared_nameAdam/m/conv2d_1/kernel
Й
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
:

@@*
dtype0
╚
Adam/v/batch_normalization/betaVarHandleOp*
_output_shapes
: *0

debug_name" Adam/v/batch_normalization/beta/*
dtype0*
shape:@*0
shared_name!Adam/v/batch_normalization/beta
П
3Adam/v/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/v/batch_normalization/beta*
_output_shapes
:@*
dtype0
╚
Adam/m/batch_normalization/betaVarHandleOp*
_output_shapes
: *0

debug_name" Adam/m/batch_normalization/beta/*
dtype0*
shape:@*0
shared_name!Adam/m/batch_normalization/beta
П
3Adam/m/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/m/batch_normalization/beta*
_output_shapes
:@*
dtype0
╦
 Adam/v/batch_normalization/gammaVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/v/batch_normalization/gamma/*
dtype0*
shape:@*1
shared_name" Adam/v/batch_normalization/gamma
С
4Adam/v/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/v/batch_normalization/gamma*
_output_shapes
:@*
dtype0
╦
 Adam/m/batch_normalization/gammaVarHandleOp*
_output_shapes
: *1

debug_name#!Adam/m/batch_normalization/gamma/*
dtype0*
shape:@*1
shared_name" Adam/m/batch_normalization/gamma
С
4Adam/m/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/m/batch_normalization/gamma*
_output_shapes
:@*
dtype0
б
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/conv2d/bias/*
dtype0*
shape:@*#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
:@*
dtype0
б
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/conv2d/bias/*
dtype0*
shape:@*#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
:@*
dtype0
│
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d/kernel/*
dtype0*
shape:

@*%
shared_nameAdam/v/conv2d/kernel
Е
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
:

@*
dtype0
│
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d/kernel/*
dtype0*
shape:

@*%
shared_nameAdam/m/conv2d/kernel
Е
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
:

@*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
█
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_7/moving_variance/*
dtype0*
shape:Ї*6
shared_name'%batch_normalization_7/moving_variance
Ь
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:Ї*
dtype0
╧
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_7/moving_mean/*
dtype0*
shape:Ї*2
shared_name#!batch_normalization_7/moving_mean
Ф
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:Ї*
dtype0
║
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_7/beta/*
dtype0*
shape:Ї*+
shared_namebatch_normalization_7/beta
Ж
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:Ї*
dtype0
╜
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_7/gamma/*
dtype0*
shape:Ї*,
shared_namebatch_normalization_7/gamma
И
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:Ї*
dtype0
Р
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:Ї*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:Ї*
dtype0
Ы
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:
шЇ*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
шЇ*
dtype0
█
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_6/moving_variance/*
dtype0*
shape:ш*6
shared_name'%batch_normalization_6/moving_variance
Ь
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:ш*
dtype0
╧
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_6/moving_mean/*
dtype0*
shape:ш*2
shared_name#!batch_normalization_6/moving_mean
Ф
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:ш*
dtype0
║
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_6/beta/*
dtype0*
shape:ш*+
shared_namebatch_normalization_6/beta
Ж
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:ш*
dtype0
╜
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_6/gamma/*
dtype0*
shape:ш*,
shared_namebatch_normalization_6/gamma
И
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:ш*
dtype0
К

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:ш*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:ш*
dtype0
Х
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:
Аш*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
Аш*
dtype0
█
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_5/moving_variance/*
dtype0*
shape:А*6
shared_name'%batch_normalization_5/moving_variance
Ь
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:А*
dtype0
╧
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_5/moving_mean/*
dtype0*
shape:А*2
shared_name#!batch_normalization_5/moving_mean
Ф
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:А*
dtype0
║
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_5/beta/*
dtype0*
shape:А*+
shared_namebatch_normalization_5/beta
Ж
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:А*
dtype0
╜
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_5/gamma/*
dtype0*
shape:А*,
shared_namebatch_normalization_5/gamma
И
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:А*
dtype0
У
conv2d_5/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_5/bias/*
dtype0*
shape:А*
shared_nameconv2d_5/bias
l
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes	
:А*
dtype0
ж
conv2d_5/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_5/kernel/*
dtype0*
shape:АА* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:АА*
dtype0
█
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_4/moving_variance/*
dtype0*
shape:А*6
shared_name'%batch_normalization_4/moving_variance
Ь
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:А*
dtype0
╧
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_4/moving_mean/*
dtype0*
shape:А*2
shared_name#!batch_normalization_4/moving_mean
Ф
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:А*
dtype0
║
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_4/beta/*
dtype0*
shape:А*+
shared_namebatch_normalization_4/beta
Ж
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:А*
dtype0
╜
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_4/gamma/*
dtype0*
shape:А*,
shared_namebatch_normalization_4/gamma
И
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:А*
dtype0
У
conv2d_4/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_4/bias/*
dtype0*
shape:А*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:А*
dtype0
ж
conv2d_4/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_4/kernel/*
dtype0*
shape:АА* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:АА*
dtype0
█
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_3/moving_variance/*
dtype0*
shape:А*6
shared_name'%batch_normalization_3/moving_variance
Ь
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:А*
dtype0
╧
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_3/moving_mean/*
dtype0*
shape:А*2
shared_name#!batch_normalization_3/moving_mean
Ф
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:А*
dtype0
║
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_3/beta/*
dtype0*
shape:А*+
shared_namebatch_normalization_3/beta
Ж
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:А*
dtype0
╜
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_3/gamma/*
dtype0*
shape:А*,
shared_namebatch_normalization_3/gamma
И
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:А*
dtype0
У
conv2d_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_3/bias/*
dtype0*
shape:А*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:А*
dtype0
ж
conv2d_3/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/kernel/*
dtype0*
shape:АА* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:АА*
dtype0
█
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_2/moving_variance/*
dtype0*
shape:А*6
shared_name'%batch_normalization_2/moving_variance
Ь
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:А*
dtype0
╧
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_2/moving_mean/*
dtype0*
shape:А*2
shared_name#!batch_normalization_2/moving_mean
Ф
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:А*
dtype0
║
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_2/beta/*
dtype0*
shape:А*+
shared_namebatch_normalization_2/beta
Ж
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:А*
dtype0
╜
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_2/gamma/*
dtype0*
shape:А*,
shared_namebatch_normalization_2/gamma
И
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:А*
dtype0
У
conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape:А*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:А*
dtype0
е
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape:@А* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@А*
dtype0
┌
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_1/moving_variance/*
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
Ы
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
╬
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_1/moving_mean/*
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
У
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
╣
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_1/beta/*
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
Е
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
╝
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_1/gamma/*
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
З
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0
Т
conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
д
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape:

@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:

@@*
dtype0
╘
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *4

debug_name&$batch_normalization/moving_variance/*
dtype0*
shape:@*4
shared_name%#batch_normalization/moving_variance
Ч
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
╚
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *0

debug_name" batch_normalization/moving_mean/*
dtype0*
shape:@*0
shared_name!batch_normalization/moving_mean
П
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:@*
dtype0
│
batch_normalization/betaVarHandleOp*
_output_shapes
: *)

debug_namebatch_normalization/beta/*
dtype0*
shape:@*)
shared_namebatch_normalization/beta
Б
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:@*
dtype0
╢
batch_normalization/gammaVarHandleOp*
_output_shapes
: **

debug_namebatch_normalization/gamma/*
dtype0*
shape:@**
shared_namebatch_normalization/gamma
Г
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:@*
dtype0
М
conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
Ю
conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape:

@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:

@*
dtype0
б
siameseOutput/biasVarHandleOp*
_output_shapes
: *#

debug_namesiameseOutput/bias/*
dtype0*
shape:*#
shared_namesiameseOutput/bias
u
&siameseOutput/bias/Read/ReadVariableOpReadVariableOpsiameseOutput/bias*
_output_shapes
:*
dtype0
л
siameseOutput/kernelVarHandleOp*
_output_shapes
: *%

debug_namesiameseOutput/kernel/*
dtype0*
shape
:*%
shared_namesiameseOutput/kernel
}
(siameseOutput/kernel/Read/ReadVariableOpReadVariableOpsiameseOutput/kernel*
_output_shapes

:*
dtype0
Т
serving_default_imageInput1Placeholder*1
_output_shapes
:         рр*
dtype0*&
shape:         рр
Т
serving_default_imageInput2Placeholder*1
_output_shapes
:         рр*
dtype0*&
shape:         рр
ы
StatefulPartitionedCallStatefulPartitionedCallserving_default_imageInput1serving_default_imageInput2conv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_5/kernelconv2d_5/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense/kernel
dense/bias!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancebatch_normalization_6/betabatch_normalization_6/gammadense_1/kerneldense_1/bias!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancebatch_normalization_7/betabatch_normalization_7/gammasiameseOutput/kernelsiameseOutput/bias*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./0123*2
config_proto" 

CPU

GPU2*0,1J 8В *-
f(R&
$__inference_signature_wrapper_211603

NoOpNoOp
╡╔
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*я╚
valueф╚Bр╚ B╪╚
┴
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
└
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
 layer-17
!layer-18
"layer-19
#layer_with_weights-8
#layer-20
$layer_with_weights-9
$layer-21
%layer-22
&layer-23
'layer-24
(layer_with_weights-10
(layer-25
)layer_with_weights-11
)layer-26
*layer-27
+layer-28
,layer-29
-layer-30
.layer_with_weights-12
.layer-31
/layer_with_weights-13
/layer-32
0layer-33
1layer-34
2layer_with_weights-14
2layer-35
3layer_with_weights-15
3layer-36
4layer-37
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
О
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
ж
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
К
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
[18
\19
]20
^21
_22
`23
a24
b25
c26
d27
e28
f29
g30
h31
i32
j33
k34
l35
m36
n37
o38
p39
q40
r41
s42
t43
u44
v45
w46
x47
G48
H49*
К
I0
J1
K2
L3
O4
P5
Q6
R7
U8
V9
W10
X11
[12
\13
]14
^15
a16
b17
c18
d19
g20
h21
i22
j23
m24
n25
o26
p27
s28
t29
u30
v31
G32
H33*
* 
░
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

~trace_0
trace_1* 

Аtrace_0
Бtrace_1* 
* 
И
В
_variables
Г_iterations
Д_learning_rate
Е_index_dict
Ж
_momentums
З_velocities
И_update_step_xla*

Йserving_default* 
╧
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses

Ikernel
Jbias
!Р_jit_compiled_convolution_op*
▄
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses
	Чaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
Ф
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses* 
Ф
Ю	variables
Яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses* 
м
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
к_random_generator* 
╧
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses

Okernel
Pbias
!▒_jit_compiled_convolution_op*
▄
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
	╕axis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance*
Ф
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses* 
Ф
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses* 
м
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses
╦_random_generator* 
╧
╠	variables
═trainable_variables
╬regularization_losses
╧	keras_api
╨__call__
+╤&call_and_return_all_conditional_losses

Ukernel
Vbias
!╥_jit_compiled_convolution_op*
▄
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses
	┘axis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance*
Ф
┌	variables
█trainable_variables
▄regularization_losses
▌	keras_api
▐__call__
+▀&call_and_return_all_conditional_losses* 
Ф
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses* 
м
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses
ь_random_generator* 
╧
э	variables
юtrainable_variables
яregularization_losses
Ё	keras_api
ё__call__
+Є&call_and_return_all_conditional_losses

[kernel
\bias
!є_jit_compiled_convolution_op*
▄
Ї	variables
їtrainable_variables
Ўregularization_losses
ў	keras_api
°__call__
+∙&call_and_return_all_conditional_losses
	·axis
	]gamma
^beta
_moving_mean
`moving_variance*
Ф
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses* 
Ф
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses* 
м
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
Н_random_generator* 
╧
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses

akernel
bbias
!Ф_jit_compiled_convolution_op*
▄
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
	Ыaxis
	cgamma
dbeta
emoving_mean
fmoving_variance*
Ф
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses* 
Ф
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses* 
м
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses
о_random_generator* 
╧
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses

gkernel
hbias
!╡_jit_compiled_convolution_op*
▄
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses
	╝axis
	igamma
jbeta
kmoving_mean
lmoving_variance*
Ф
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses* 
Ф
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses* 
м
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
╧_random_generator* 
Ф
╨	variables
╤trainable_variables
╥regularization_losses
╙	keras_api
╘__call__
+╒&call_and_return_all_conditional_losses* 
м
╓	variables
╫trainable_variables
╪regularization_losses
┘	keras_api
┌__call__
+█&call_and_return_all_conditional_losses

mkernel
nbias*
▄
▄	variables
▌trainable_variables
▐regularization_losses
▀	keras_api
р__call__
+с&call_and_return_all_conditional_losses
	тaxis
	ogamma
pbeta
qmoving_mean
rmoving_variance*
Ф
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses* 
м
щ	variables
ъtrainable_variables
ыregularization_losses
ь	keras_api
э__call__
+ю&call_and_return_all_conditional_losses
я_random_generator* 
м
Ё	variables
ёtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses

skernel
tbias*
▄
Ў	variables
ўtrainable_variables
°regularization_losses
∙	keras_api
·__call__
+√&call_and_return_all_conditional_losses
	№axis
	ugamma
vbeta
wmoving_mean
xmoving_variance*
Ф
¤	variables
■trainable_variables
 regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses* 
·
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
[18
\19
]20
^21
_22
`23
a24
b25
c26
d27
e28
f29
g30
h31
i32
j33
k34
l35
m36
n37
o38
p39
q40
r41
s42
t43
u44
v45
w46
x47*
·
I0
J1
K2
L3
O4
P5
Q6
R7
U8
V9
W10
X11
[12
\13
]14
^15
a16
b17
c18
d19
g20
h21
i22
j23
m24
n25
o26
p27
s28
t29
u30
v31*
2
Г0
Д1
Е2
Ж3
З4
И5* 
Ш
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

Оtrace_0
Пtrace_1* 

Рtrace_0
Сtrace_1* 
* 
* 
* 
Ц
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

Чtrace_0
Шtrace_1* 

Щtrace_0
Ъtrace_1* 

G0
H1*

G0
H1*
* 
Ш
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

аtrace_0* 

бtrace_0* 
d^
VARIABLE_VALUEsiameseOutput/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsiameseOutput/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatch_normalization/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEbatch_normalization/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbatch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEbatch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_2/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_2/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_2/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_2/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_3/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_3/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_3/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_3/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_4/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_4/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_4/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_4/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_4/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_4/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_5/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_5/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_5/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_5/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_5/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_5/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_6/gamma'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_6/beta'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_6/moving_mean'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_6/moving_variance'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_7/gamma'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_7/beta'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_7/moving_mean'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_7/moving_variance'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
z
M0
N1
S2
T3
Y4
Z5
_6
`7
e8
f9
k10
l11
q12
r13
w14
x15*
'
0
1
2
3
4*

в0
г1*
* 
* 
* 
* 
* 
* 
ч
Г0
д1
е2
ж3
з4
и5
й6
к7
л8
м9
н10
о11
п12
░13
▒14
▓15
│16
┤17
╡18
╢19
╖20
╕21
╣22
║23
╗24
╝25
╜26
╛27
┐28
└29
┴30
┬31
├32
─33
┼34
╞35
╟36
╚37
╔38
╩39
╦40
╠41
═42
╬43
╧44
╨45
╤46
╥47
╙48
╘49
╒50
╓51
╫52
╪53
┘54
┌55
█56
▄57
▌58
▐59
▀60
р61
с62
т63
у64
ф65
х66
ц67
ч68*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
м
д0
ж1
и2
к3
м4
о5
░6
▓7
┤8
╢9
╕10
║11
╝12
╛13
└14
┬15
─16
╞17
╚18
╩19
╠20
╬21
╨22
╥23
╘24
╓25
╪26
┌27
▄28
▐29
р30
т31
ф32
ц33*
м
е0
з1
й2
л3
н4
п5
▒6
│7
╡8
╖9
╣10
╗11
╜12
┐13
┴14
├15
┼16
╟17
╔18
╦19
═20
╧21
╤22
╙23
╒24
╫25
┘26
█27
▌28
▀29
с30
у31
х32
ч33*
Ў
шtrace_0
щtrace_1
ъtrace_2
ыtrace_3
ьtrace_4
эtrace_5
юtrace_6
яtrace_7
Ёtrace_8
ёtrace_9
Єtrace_10
єtrace_11
Їtrace_12
їtrace_13
Ўtrace_14
ўtrace_15
°trace_16
∙trace_17
·trace_18
√trace_19
№trace_20
¤trace_21
■trace_22
 trace_23
Аtrace_24
Бtrace_25
Вtrace_26
Гtrace_27
Дtrace_28
Еtrace_29
Жtrace_30
Зtrace_31
Иtrace_32
Йtrace_33* 
* 

I0
J1*

I0
J1*


Г0* 
Ю
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

Пtrace_0* 

Рtrace_0* 
* 
 
K0
L1
M2
N3*

K0
L1*
* 
Ю
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses*

Цtrace_0
Чtrace_1* 

Шtrace_0
Щtrace_1* 
* 
* 
* 
* 
Ь
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses* 

Яtrace_0* 

аtrace_0* 
* 
* 
* 
Ь
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
Ю	variables
Яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses* 

жtrace_0* 

зtrace_0* 
* 
* 
* 
Ь
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses* 

нtrace_0
оtrace_1* 

пtrace_0
░trace_1* 
* 

O0
P1*

O0
P1*


Д0* 
Ю
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 
* 
 
Q0
R1
S2
T3*

Q0
R1*
* 
Ю
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses*

╜trace_0
╛trace_1* 

┐trace_0
└trace_1* 
* 
* 
* 
* 
Ь
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses* 

╞trace_0* 

╟trace_0* 
* 
* 
* 
Ь
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses* 

═trace_0* 

╬trace_0* 
* 
* 
* 
Ь
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses* 

╘trace_0
╒trace_1* 

╓trace_0
╫trace_1* 
* 

U0
V1*

U0
V1*


Е0* 
Ю
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
╠	variables
═trainable_variables
╬regularization_losses
╨__call__
+╤&call_and_return_all_conditional_losses
'╤"call_and_return_conditional_losses*

▌trace_0* 

▐trace_0* 
* 
 
W0
X1
Y2
Z3*

W0
X1*
* 
Ю
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses*

фtrace_0
хtrace_1* 

цtrace_0
чtrace_1* 
* 
* 
* 
* 
Ь
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
┌	variables
█trainable_variables
▄regularization_losses
▐__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses* 

эtrace_0* 

юtrace_0* 
* 
* 
* 
Ь
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses* 

Їtrace_0* 

їtrace_0* 
* 
* 
* 
Ь
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses* 

√trace_0
№trace_1* 

¤trace_0
■trace_1* 
* 

[0
\1*

[0
\1*


Ж0* 
Ю
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
э	variables
юtrainable_variables
яregularization_losses
ё__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses*

Дtrace_0* 

Еtrace_0* 
* 
 
]0
^1
_2
`3*

]0
^1*
* 
Ю
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Ї	variables
їtrainable_variables
Ўregularization_losses
°__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses*

Лtrace_0
Мtrace_1* 

Нtrace_0
Оtrace_1* 
* 
* 
* 
* 
Ь
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 
* 
* 
* 
Ь
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

Ыtrace_0* 

Ьtrace_0* 
* 
* 
* 
Ь
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

вtrace_0
гtrace_1* 

дtrace_0
еtrace_1* 
* 

a0
b1*

a0
b1*


З0* 
Ю
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses*

лtrace_0* 

мtrace_0* 
* 
 
c0
d1
e2
f3*

c0
d1*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses*

▓trace_0
│trace_1* 

┤trace_0
╡trace_1* 
* 
* 
* 
* 
Ь
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses* 

╗trace_0* 

╝trace_0* 
* 
* 
* 
Ь
╜non_trainable_variables
╛layers
┐metrics
 └layer_regularization_losses
┴layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses* 

┬trace_0* 

├trace_0* 
* 
* 
* 
Ь
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses* 

╔trace_0
╩trace_1* 

╦trace_0
╠trace_1* 
* 

g0
h1*

g0
h1*


И0* 
Ю
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses*

╥trace_0* 

╙trace_0* 
* 
 
i0
j1
k2
l3*

i0
j1*
* 
Ю
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses*

┘trace_0
┌trace_1* 

█trace_0
▄trace_1* 
* 
* 
* 
* 
Ь
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses* 

тtrace_0* 

уtrace_0* 
* 
* 
* 
Ь
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses* 

щtrace_0* 

ъtrace_0* 
* 
* 
* 
Ь
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses* 

Ёtrace_0
ёtrace_1* 

Єtrace_0
єtrace_1* 
* 
* 
* 
* 
Ь
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
╨	variables
╤trainable_variables
╥regularization_losses
╘__call__
+╒&call_and_return_all_conditional_losses
'╒"call_and_return_conditional_losses* 

∙trace_0* 

·trace_0* 

m0
n1*

m0
n1*
* 
Ю
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
╓	variables
╫trainable_variables
╪regularization_losses
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
 
o0
p1
q2
r3*

o0
p1*
* 
Ю
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
▄	variables
▌trainable_variables
▐regularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses*

Зtrace_0
Иtrace_1* 

Йtrace_0
Кtrace_1* 
* 
* 
* 
* 
Ь
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses* 

Рtrace_0* 

Сtrace_0* 
* 
* 
* 
Ь
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
щ	variables
ъtrainable_variables
ыregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses* 

Чtrace_0
Шtrace_1* 

Щtrace_0
Ъtrace_1* 
* 

s0
t1*

s0
t1*
* 
Ю
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Ё	variables
ёtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses*

аtrace_0* 

бtrace_0* 
 
u0
v1
w2
x3*

u0
v1*
* 
Ю
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ў	variables
ўtrainable_variables
°regularization_losses
·__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses*

зtrace_0
иtrace_1* 

йtrace_0
кtrace_1* 
* 
* 
* 
* 
Ь
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
¤	variables
■trainable_variables
 regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 

░trace_0* 

▒trace_0* 

▓trace_0* 

│trace_0* 

┤trace_0* 

╡trace_0* 

╢trace_0* 

╖trace_0* 
z
M0
N1
S2
T3
Y4
Z5
_6
`7
e8
f9
k10
l11
q12
r13
w14
x15*
к
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
 17
!18
"19
#20
$21
%22
&23
'24
(25
)26
*27
+28
,29
-30
.31
/32
033
134
235
336
437*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
╕	variables
╣	keras_api

║total

╗count*
M
╝	variables
╜	keras_api

╛total

┐count
└
_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/batch_normalization/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/batch_normalization/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/batch_normalization/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/batch_normalization/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_1/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_1/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_1/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_1/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_2/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_3/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_3/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_3/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_3/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_4/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_4/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_4/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_4/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_5/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_5/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_5/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_5/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_5/gamma2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_5/gamma2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_5/beta2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_5/beta2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_6/gamma2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_6/gamma2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_6/beta2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_6/beta2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_7/gamma2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_7/gamma2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_7/beta2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_7/beta2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/siameseOutput/kernel2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/siameseOutput/kernel2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/siameseOutput/bias2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/siameseOutput/bias2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


Г0* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


Д0* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


Е0* 
* 
* 
* 

Y0
Z1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


Ж0* 
* 
* 
* 

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


З0* 
* 
* 
* 

e0
f1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


И0* 
* 
* 
* 

k0
l1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

q0
r1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

w0
x1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

║0
╗1*

╕	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

╛0
┐1*

╝	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
з
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamesiameseOutput/kernelsiameseOutput/biasconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_5/kernelconv2d_5/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense/kernel
dense/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancedense_1/kerneldense_1/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variance	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_4/gamma"Adam/v/batch_normalization_4/gamma!Adam/m/batch_normalization_4/beta!Adam/v/batch_normalization_4/betaAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/bias"Adam/m/batch_normalization_5/gamma"Adam/v/batch_normalization_5/gamma!Adam/m/batch_normalization_5/beta!Adam/v/batch_normalization_5/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/siameseOutput/kernelAdam/v/siameseOutput/kernelAdam/m/siameseOutput/biasAdam/v/siameseOutput/biastotal_1count_1totalcountConst*Л
TinГ
А2~*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *(
f#R!
__inference__traced_save_213960
б
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesiameseOutput/kernelsiameseOutput/biasconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_4/kernelconv2d_4/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_5/kernelconv2d_5/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense/kernel
dense/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancedense_1/kerneldense_1/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variance	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_4/gamma"Adam/v/batch_normalization_4/gamma!Adam/m/batch_normalization_4/beta!Adam/v/batch_normalization_4/betaAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/bias"Adam/m/batch_normalization_5/gamma"Adam/v/batch_normalization_5/gamma!Adam/m/batch_normalization_5/beta!Adam/v/batch_normalization_5/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/siameseOutput/kernelAdam/v/siameseOutput/kernelAdam/m/siameseOutput/biasAdam/v/siameseOutput/biastotal_1count_1totalcount*Й
TinБ
2}*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *+
f&R$
"__inference__traced_restore_214341ОБ.
ц
]
A__inference_elu_5_layer_call_and_return_conditional_losses_210211

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╜
L
0__inference_max_pooling2d_1_layer_call_fn_212054

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_209133Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╥
a
(__inference_dropout_layer_call_fn_212988

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_210263p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_209733

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ъ	
╡
__inference_loss_fn_0_213153R
8conv2d_kernel_regularizer_l2loss_readvariableop_resource:

@
identityИв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp░
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp8conv2d_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentity!conv2d/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: T
NoOpNoOp0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
▐#
╘
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212748

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_212720*
output_shapes	
:А*#
then_branchR
cond_true_212719N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_212735*
output_shapes	
:А*%
then_branchR
cond_1_true_212734R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
З
В
cond_false_212354
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
т
]
A__inference_elu_1_layer_call_and_return_conditional_losses_212049

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:         pp@a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:         pp@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         pp@:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29791
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
о
K
"__inference__update_step_xla_29856
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
л
J
"__inference__update_step_xla_29771
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Т
n
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212458

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐#
╘
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_209679

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_209651*
output_shapes	
:А*#
then_branchR
cond_true_209650N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_209666*
output_shapes	
:А*%
then_branchR
cond_1_true_209665R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
в
б
)__inference_conv2d_4_layer_call_fn_212472

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_210156x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:&"
 
_user_specified_name212466:&"
 
_user_specified_name212468
в
б
)__inference_conv2d_3_layer_call_fn_212289

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_210120x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:&"
 
_user_specified_name212283:&"
 
_user_specified_name212285
У
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_212242

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ц
]
A__inference_elu_2_layer_call_and_return_conditional_losses_210103

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         88Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         88А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         88А:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
┘
▒
D__inference_conv2d_1_layer_call_and_return_conditional_losses_211937

inputs8
conv2d_readvariableop_resource:

@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@Ш
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         pp@З
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
n
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212275

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
є
m
4__inference_spatial_dropout2d_2_layer_call_fn_212247

inputs
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_209311Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
в
Л
cond_1_false_208916
cond_1_placeholder,
cond_1_readvariableop_resource:@
cond_1_identityИвcond_1/ReadVariableOpp
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes
:@*
dtype0m
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes
:@A
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
ц
┤
D__inference_conv2d_5_layer_call_and_return_conditional_losses_210192

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
а
а
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212771

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╥
W
"__inference__update_step_xla_29786
gradient#
variable:@А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:@А: *
	_noinline(:Q M
'
_output_shapes
:@А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ц
]
A__inference_elu_3_layer_call_and_return_conditional_losses_210139

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
З
В
cond_false_209201
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
▒	
╒
6__inference_batch_normalization_6_layer_call_fn_212885

inputs
unknown:	ш
	unknown_0:	ш
	unknown_1:	ш
	unknown_2:	ш
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_209864p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:&"
 
_user_specified_name212875:&"
 
_user_specified_name212877:&"
 
_user_specified_name212879:&"
 
_user_specified_name212881
о
K
"__inference__update_step_xla_29876
gradient
variable:	ш*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:ш: *
	_noinline(:E A

_output_shapes	
:ш
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
¤
Ы
.__inference_siameseOutput_layer_call_fn_211720

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211001o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:&"
 
_user_specified_name211714:&"
 
_user_specified_name211716
ц
]
A__inference_elu_3_layer_call_and_return_conditional_losses_212415

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Єh
Й
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211237
imageinput1
imageinput2-
imageencoder_211036:

@!
imageencoder_211038:@!
imageencoder_211040:@!
imageencoder_211042:@!
imageencoder_211044:@!
imageencoder_211046:@-
imageencoder_211048:

@@!
imageencoder_211050:@!
imageencoder_211052:@!
imageencoder_211054:@!
imageencoder_211056:@!
imageencoder_211058:@.
imageencoder_211060:@А"
imageencoder_211062:	А"
imageencoder_211064:	А"
imageencoder_211066:	А"
imageencoder_211068:	А"
imageencoder_211070:	А/
imageencoder_211072:АА"
imageencoder_211074:	А"
imageencoder_211076:	А"
imageencoder_211078:	А"
imageencoder_211080:	А"
imageencoder_211082:	А/
imageencoder_211084:АА"
imageencoder_211086:	А"
imageencoder_211088:	А"
imageencoder_211090:	А"
imageencoder_211092:	А"
imageencoder_211094:	А/
imageencoder_211096:АА"
imageencoder_211098:	А"
imageencoder_211100:	А"
imageencoder_211102:	А"
imageencoder_211104:	А"
imageencoder_211106:	А'
imageencoder_211108:
Аш"
imageencoder_211110:	ш"
imageencoder_211112:	ш"
imageencoder_211114:	ш"
imageencoder_211116:	ш"
imageencoder_211118:	ш'
imageencoder_211120:
шЇ"
imageencoder_211122:	Ї"
imageencoder_211124:	Ї"
imageencoder_211126:	Ї"
imageencoder_211128:	Ї"
imageencoder_211130:	Ї&
siameseoutput_211207:"
siameseoutput_211209:
identityИв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpв$imageEncoder/StatefulPartitionedCallв&imageEncoder/StatefulPartitionedCall_1в%siameseOutput/StatefulPartitionedCallн
$imageEncoder/StatefulPartitionedCallStatefulPartitionedCallimageinput1imageencoder_211036imageencoder_211038imageencoder_211040imageencoder_211042imageencoder_211044imageencoder_211046imageencoder_211048imageencoder_211050imageencoder_211052imageencoder_211054imageencoder_211056imageencoder_211058imageencoder_211060imageencoder_211062imageencoder_211064imageencoder_211066imageencoder_211068imageencoder_211070imageencoder_211072imageencoder_211074imageencoder_211076imageencoder_211078imageencoder_211080imageencoder_211082imageencoder_211084imageencoder_211086imageencoder_211088imageencoder_211090imageencoder_211092imageencoder_211094imageencoder_211096imageencoder_211098imageencoder_211100imageencoder_211102imageencoder_211104imageencoder_211106imageencoder_211108imageencoder_211110imageencoder_211112imageencoder_211114imageencoder_211116imageencoder_211118imageencoder_211120imageencoder_211122imageencoder_211124imageencoder_211126imageencoder_211128imageencoder_211130*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487п
&imageEncoder/StatefulPartitionedCall_1StatefulPartitionedCallimageinput2imageencoder_211036imageencoder_211038imageencoder_211040imageencoder_211042imageencoder_211044imageencoder_211046imageencoder_211048imageencoder_211050imageencoder_211052imageencoder_211054imageencoder_211056imageencoder_211058imageencoder_211060imageencoder_211062imageencoder_211064imageencoder_211066imageencoder_211068imageencoder_211070imageencoder_211072imageencoder_211074imageencoder_211076imageencoder_211078imageencoder_211080imageencoder_211082imageencoder_211084imageencoder_211086imageencoder_211088imageencoder_211090imageencoder_211092imageencoder_211094imageencoder_211096imageencoder_211098imageencoder_211100imageencoder_211102imageencoder_211104imageencoder_211106imageencoder_211108imageencoder_211110imageencoder_211112imageencoder_211114imageencoder_211116imageencoder_211118imageencoder_211120imageencoder_211122imageencoder_211124imageencoder_211126imageencoder_211128imageencoder_211130*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487▓
&cosineSimilarityMetric/PartitionedCallPartitionedCall-imageEncoder/StatefulPartitionedCall:output:0/imageEncoder/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211205▓
%siameseOutput/StatefulPartitionedCallStatefulPartitionedCall/cosineSimilarityMetric/PartitionedCall:output:0siameseoutput_211207siameseoutput_211209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211001Л
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_211036*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Н
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_211048*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: О
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_211060*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: П
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_211072*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: П
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_211084*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: П
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_211096*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
IdentityIdentity.siameseOutput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp%^imageEncoder/StatefulPartitionedCall'^imageEncoder/StatefulPartitionedCall_1&^siameseOutput/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*│
_input_shapesб
Ю:         рр:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2L
$imageEncoder/StatefulPartitionedCall$imageEncoder/StatefulPartitionedCall2P
&imageEncoder/StatefulPartitionedCall_1&imageEncoder/StatefulPartitionedCall_12N
%siameseOutput/StatefulPartitionedCall%siameseOutput/StatefulPartitionedCall:^ Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput1:^Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput2:&"
 
_user_specified_name211036:&"
 
_user_specified_name211038:&"
 
_user_specified_name211040:&"
 
_user_specified_name211042:&"
 
_user_specified_name211044:&"
 
_user_specified_name211046:&"
 
_user_specified_name211048:&	"
 
_user_specified_name211050:&
"
 
_user_specified_name211052:&"
 
_user_specified_name211054:&"
 
_user_specified_name211056:&"
 
_user_specified_name211058:&"
 
_user_specified_name211060:&"
 
_user_specified_name211062:&"
 
_user_specified_name211064:&"
 
_user_specified_name211066:&"
 
_user_specified_name211068:&"
 
_user_specified_name211070:&"
 
_user_specified_name211072:&"
 
_user_specified_name211074:&"
 
_user_specified_name211076:&"
 
_user_specified_name211078:&"
 
_user_specified_name211080:&"
 
_user_specified_name211082:&"
 
_user_specified_name211084:&"
 
_user_specified_name211086:&"
 
_user_specified_name211088:&"
 
_user_specified_name211090:&"
 
_user_specified_name211092:&"
 
_user_specified_name211094:& "
 
_user_specified_name211096:&!"
 
_user_specified_name211098:&""
 
_user_specified_name211100:&#"
 
_user_specified_name211102:&$"
 
_user_specified_name211104:&%"
 
_user_specified_name211106:&&"
 
_user_specified_name211108:&'"
 
_user_specified_name211110:&("
 
_user_specified_name211112:&)"
 
_user_specified_name211114:&*"
 
_user_specified_name211116:&+"
 
_user_specified_name211118:&,"
 
_user_specified_name211120:&-"
 
_user_specified_name211122:&."
 
_user_specified_name211124:&/"
 
_user_specified_name211126:&0"
 
_user_specified_name211128:&1"
 
_user_specified_name211130:&2"
 
_user_specified_name211207:&3"
 
_user_specified_name211209
Р
Ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_209102

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╣
J
.__inference_max_pooling2d_layer_call_fn_211871

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_208983Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
є
m
4__inference_spatial_dropout2d_3_layer_call_fn_212430

inputs
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_209461Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
а
а
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_209252

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
g
cond_1_true_212551$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
╒
X
"__inference__update_step_xla_29826
gradient$
variable:АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:АА: *
	_noinline(:R N
(
_output_shapes
:АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
В
Б
cond_false_209051
cond_placeholder*
cond_readvariableop_resource:@
cond_identityИвcond/ReadVariableOpl
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes
:@*
dtype0g
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes
:@=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2*
cond/ReadVariableOpcond/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
л
J
"__inference__update_step_xla_29751
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ї
Ц
&__inference_dense_layer_call_fn_212849

inputs
unknown:
Аш
	unknown_0:	ш
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_210231p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:&"
 
_user_specified_name212843:&"
 
_user_specified_name212845
ю
m
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_209466

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29801
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
┘
▒
D__inference_conv2d_1_layer_call_and_return_conditional_losses_210048

inputs8
conv2d_readvariableop_resource:

@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@Ш
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         pp@З
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ц<
╓
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_209950

inputs6
'assignmovingavg_readvariableop_resource:	Ї8
)assignmovingavg_1_readvariableop_resource:	Ї+
cast_readvariableop_resource:	Ї-
cast_1_readvariableop_resource:	Ї
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвCast/ReadVariableOpвCast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	Ї*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ЇИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         Їl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	Ї*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:Ї*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:Ї*
squeeze_dims
 I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskK
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: Y

zeros_likeConst*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    v
SelectV2SelectV2Greater:z:0moments/Squeeze:output:0zeros_like:output:0*
T0*
_output_shapes	
:ЇM
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: [
zeros_like_1Const*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    ~

SelectV2_1SelectV2Greater_1:z:0moments/Squeeze_1:output:0zeros_like_1:output:0*
T0*
_output_shapes	
:ЇK
Shape_1Shapeinputs*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:Ї*
dtype0{
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0SelectV2:output:0*
T0*
_output_shapes	
:Їy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ї[
AssignMovingAvg/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Б
AssignMovingAvg/GreaterGreaterstrided_slice_1:output:0"AssignMovingAvg/Greater/y:output:0*
T0*
_output_shapes
: i
AssignMovingAvg/zeros_likeConst*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    е
AssignMovingAvg/SelectV2SelectV2AssignMovingAvg/Greater:z:0AssignMovingAvg/mul:z:0#AssignMovingAvg/zeros_like:output:0*
T0*
_output_shapes	
:Ї╢
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resource!AssignMovingAvg/SelectV2:output:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0Б
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0SelectV2_1:output:0*
T0*
_output_shapes	
:Ї
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:Ї]
AssignMovingAvg_1/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Е
AssignMovingAvg_1/GreaterGreaterstrided_slice_1:output:0$AssignMovingAvg_1/Greater/y:output:0*
T0*
_output_shapes
: k
AssignMovingAvg_1/zeros_likeConst*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    н
AssignMovingAvg_1/SelectV2SelectV2AssignMovingAvg_1/Greater:z:0AssignMovingAvg_1/mul:z:0%AssignMovingAvg_1/zeros_like:output:0*
T0*
_output_shapes	
:Ї╛
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resource#AssignMovingAvg_1/SelectV2:output:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:k
batchnorm/addAddV2SelectV2_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ЇQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:Їn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:Їd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Їb
batchnorm/mul_2MulSelectV2:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Їl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Їs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Їc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         Ї║
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         Ї: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
_
cond_true_211987"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity^
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
О

╧
4__inference_batch_normalization_layer_call_fn_211780

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_208952Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:&"
 
_user_specified_name211770:&"
 
_user_specified_name211772:&"
 
_user_specified_name211774:&"
 
_user_specified_name211776
╞
]
A__inference_elu_7_layer_call_and_return_conditional_losses_213145

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:         ЇZ
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:         Ї"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Ї:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
╝
B
&__inference_elu_1_layer_call_fn_212044

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_1_layer_call_and_return_conditional_losses_210067h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         pp@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         pp@:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
д&
│
-__inference_imageEncoder_layer_call_fn_210588
input_1!
unknown:

@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:

@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
Аш

unknown_36:	ш

unknown_37:	ш

unknown_38:	ш

unknown_39:	ш

unknown_40:	ш

unknown_41:
шЇ

unknown_42:	Ї

unknown_43:	Ї

unknown_44:	Ї

unknown_45:	Ї

unknown_46:	Ї
identityИвStatefulPartitionedCall╧
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*B
_read_only_resource_inputs$
" 	
 !"%&)*+,/0*2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Ї<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes
}:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1:&"
 
_user_specified_name210490:&"
 
_user_specified_name210492:&"
 
_user_specified_name210494:&"
 
_user_specified_name210496:&"
 
_user_specified_name210498:&"
 
_user_specified_name210500:&"
 
_user_specified_name210502:&"
 
_user_specified_name210504:&	"
 
_user_specified_name210506:&
"
 
_user_specified_name210508:&"
 
_user_specified_name210510:&"
 
_user_specified_name210512:&"
 
_user_specified_name210514:&"
 
_user_specified_name210516:&"
 
_user_specified_name210518:&"
 
_user_specified_name210520:&"
 
_user_specified_name210522:&"
 
_user_specified_name210524:&"
 
_user_specified_name210526:&"
 
_user_specified_name210528:&"
 
_user_specified_name210530:&"
 
_user_specified_name210532:&"
 
_user_specified_name210534:&"
 
_user_specified_name210536:&"
 
_user_specified_name210538:&"
 
_user_specified_name210540:&"
 
_user_specified_name210542:&"
 
_user_specified_name210544:&"
 
_user_specified_name210546:&"
 
_user_specified_name210548:&"
 
_user_specified_name210550:& "
 
_user_specified_name210552:&!"
 
_user_specified_name210554:&""
 
_user_specified_name210556:&#"
 
_user_specified_name210558:&$"
 
_user_specified_name210560:&%"
 
_user_specified_name210562:&&"
 
_user_specified_name210564:&'"
 
_user_specified_name210566:&("
 
_user_specified_name210568:&)"
 
_user_specified_name210570:&*"
 
_user_specified_name210572:&+"
 
_user_specified_name210574:&,"
 
_user_specified_name210576:&-"
 
_user_specified_name210578:&."
 
_user_specified_name210580:&/"
 
_user_specified_name210582:&0"
 
_user_specified_name210584
╕	
║
__inference_loss_fn_2_213169U
:conv2d_2_kernel_regularizer_l2loss_readvariableop_resource:@А
identityИв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp╡
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_2_kernel_regularizer_l2loss_readvariableop_resource*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
└
B
&__inference_elu_5_layer_call_fn_212776

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_5_layer_call_and_return_conditional_losses_210211i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29881
gradient
variable:	ш*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:ш: *
	_noinline(:E A

_output_shapes	
:ш
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
в
Л
cond_1_false_209066
cond_1_placeholder,
cond_1_readvariableop_resource:@
cond_1_identityИвcond_1/ReadVariableOpp
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes
:@*
dtype0m
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes
:@A
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
ш
[
?__inference_elu_layer_call_and_return_conditional_losses_211866

inputs
identityN
EluEluinputs*
T0*1
_output_shapes
:         рр@c
IdentityIdentityElu:activations:0*
T0*1
_output_shapes
:         рр@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         рр@:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
е╒
Г
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487
input_1'
conv2d_210323:

@
conv2d_210325:@(
batch_normalization_210328:@(
batch_normalization_210330:@(
batch_normalization_210332:@(
batch_normalization_210334:@)
conv2d_1_210340:

@@
conv2d_1_210342:@*
batch_normalization_1_210345:@*
batch_normalization_1_210347:@*
batch_normalization_1_210349:@*
batch_normalization_1_210351:@*
conv2d_2_210357:@А
conv2d_2_210359:	А+
batch_normalization_2_210362:	А+
batch_normalization_2_210364:	А+
batch_normalization_2_210366:	А+
batch_normalization_2_210368:	А+
conv2d_3_210374:АА
conv2d_3_210376:	А+
batch_normalization_3_210379:	А+
batch_normalization_3_210381:	А+
batch_normalization_3_210383:	А+
batch_normalization_3_210385:	А+
conv2d_4_210391:АА
conv2d_4_210393:	А+
batch_normalization_4_210396:	А+
batch_normalization_4_210398:	А+
batch_normalization_4_210400:	А+
batch_normalization_4_210402:	А+
conv2d_5_210408:АА
conv2d_5_210410:	А+
batch_normalization_5_210413:	А+
batch_normalization_5_210415:	А+
batch_normalization_5_210417:	А+
batch_normalization_5_210419:	А 
dense_210426:
Аш
dense_210428:	ш+
batch_normalization_6_210431:	ш+
batch_normalization_6_210433:	ш+
batch_normalization_6_210435:	ш+
batch_normalization_6_210437:	ш"
dense_1_210447:
шЇ
dense_1_210449:	Ї+
batch_normalization_7_210452:	Ї+
batch_normalization_7_210454:	Ї+
batch_normalization_7_210456:	Ї+
batch_normalization_7_210458:	Ї
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallв-batch_normalization_4/StatefulPartitionedCallв-batch_normalization_5/StatefulPartitionedCallв-batch_normalization_6/StatefulPartitionedCallв-batch_normalization_7/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_1/StatefulPartitionedCallв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_2/StatefulPartitionedCallв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_3/StatefulPartitionedCallв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_4/StatefulPartitionedCallв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_5/StatefulPartitionedCallв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCall°
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_210323conv2d_210325*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_210012И
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_210328batch_normalization_210330batch_normalization_210332batch_normalization_210334*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_208952ы
elu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *H
fCRA
?__inference_elu_layer_call_and_return_conditional_losses_210031х
max_pooling2d/PartitionedCallPartitionedCallelu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_208983ў
!spatial_dropout2d/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *V
fQRO
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_209016б
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall*spatial_dropout2d/PartitionedCall:output:0conv2d_1_210340conv2d_1_210342*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_210048Ф
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_210345batch_normalization_1_210347batch_normalization_1_210349batch_normalization_1_210351*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_209102я
elu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_1_layer_call_and_return_conditional_losses_210067ы
max_pooling2d_1/PartitionedCallPartitionedCallelu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_209133¤
#spatial_dropout2d_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_209166д
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_1/PartitionedCall:output:0conv2d_2_210357conv2d_2_210359*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_210084Х
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_210362batch_normalization_2_210364batch_normalization_2_210366batch_normalization_2_210368*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_209252Ё
elu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_2_layer_call_and_return_conditional_losses_210103ь
max_pooling2d_2/PartitionedCallPartitionedCallelu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_209283■
#spatial_dropout2d_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_209316д
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_2/PartitionedCall:output:0conv2d_3_210374conv2d_3_210376*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_210120Х
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_210379batch_normalization_3_210381batch_normalization_3_210383batch_normalization_3_210385*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_209402Ё
elu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_3_layer_call_and_return_conditional_losses_210139ь
max_pooling2d_3/PartitionedCallPartitionedCallelu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_209433■
#spatial_dropout2d_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_209466д
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_3/PartitionedCall:output:0conv2d_4_210391conv2d_4_210393*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_210156Х
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_210396batch_normalization_4_210398batch_normalization_4_210400batch_normalization_4_210402*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_209552Ё
elu_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_4_layer_call_and_return_conditional_losses_210175ь
max_pooling2d_4/PartitionedCallPartitionedCallelu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_209583■
#spatial_dropout2d_4/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_209616д
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_4/PartitionedCall:output:0conv2d_5_210408conv2d_5_210410*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_210192Х
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_5_210413batch_normalization_5_210415batch_normalization_5_210417batch_normalization_5_210419*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_209702Ё
elu_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_5_layer_call_and_return_conditional_losses_210211ь
max_pooling2d_5/PartitionedCallPartitionedCallelu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_209733■
#spatial_dropout2d_5/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_209766т
flatten/PartitionedCallPartitionedCall,spatial_dropout2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_210220Д
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_210426dense_210428*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_210231К
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_6_210431batch_normalization_6_210433batch_normalization_6_210435batch_normalization_6_210437*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_209864ш
elu_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_6_layer_call_and_return_conditional_losses_210250╘
dropout/PartitionedCallPartitionedCallelu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_210445М
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_210447dense_1_210449*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_210274М
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_7_210452batch_normalization_7_210454batch_normalization_7_210456batch_normalization_7_210458*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_209970ш
elu_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_7_layer_call_and_return_conditional_losses_210293Е
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_210323*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Й
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_1_210340*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: К
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_2_210357*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_3_210374*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_4_210391*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_5_210408*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentityelu_7/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Їш
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall^conv2d/StatefulPartitionedCall0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_1/StatefulPartitionedCall2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes
}:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1:&"
 
_user_specified_name210323:&"
 
_user_specified_name210325:&"
 
_user_specified_name210328:&"
 
_user_specified_name210330:&"
 
_user_specified_name210332:&"
 
_user_specified_name210334:&"
 
_user_specified_name210340:&"
 
_user_specified_name210342:&	"
 
_user_specified_name210345:&
"
 
_user_specified_name210347:&"
 
_user_specified_name210349:&"
 
_user_specified_name210351:&"
 
_user_specified_name210357:&"
 
_user_specified_name210359:&"
 
_user_specified_name210362:&"
 
_user_specified_name210364:&"
 
_user_specified_name210366:&"
 
_user_specified_name210368:&"
 
_user_specified_name210374:&"
 
_user_specified_name210376:&"
 
_user_specified_name210379:&"
 
_user_specified_name210381:&"
 
_user_specified_name210383:&"
 
_user_specified_name210385:&"
 
_user_specified_name210391:&"
 
_user_specified_name210393:&"
 
_user_specified_name210396:&"
 
_user_specified_name210398:&"
 
_user_specified_name210400:&"
 
_user_specified_name210402:&"
 
_user_specified_name210408:& "
 
_user_specified_name210410:&!"
 
_user_specified_name210413:&""
 
_user_specified_name210415:&#"
 
_user_specified_name210417:&$"
 
_user_specified_name210419:&%"
 
_user_specified_name210426:&&"
 
_user_specified_name210428:&'"
 
_user_specified_name210431:&("
 
_user_specified_name210433:&)"
 
_user_specified_name210435:&*"
 
_user_specified_name210437:&+"
 
_user_specified_name210447:&,"
 
_user_specified_name210449:&-"
 
_user_specified_name210452:&."
 
_user_specified_name210454:&/"
 
_user_specified_name210456:&0"
 
_user_specified_name210458
ц
]
A__inference_elu_5_layer_call_and_return_conditional_losses_212781

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ы
Ю
)__inference_conv2d_1_layer_call_fn_211923

inputs!
unknown:

@@
	unknown_0:@
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_210048w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         pp@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs:&"
 
_user_specified_name211917:&"
 
_user_specified_name211919
В
Б
cond_false_211988
cond_placeholder*
cond_readvariableop_resource:@
cond_identityИвcond/ReadVariableOpl
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes
:@*
dtype0g
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes
:@=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2*
cond/ReadVariableOpcond/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
У
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_212059

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
g
cond_1_true_212734$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
с
│
D__inference_conv2d_2_layer_call_and_return_conditional_losses_210084

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АЩ
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         88АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         88@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:         88@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
║	
╗
__inference_loss_fn_5_213193V
:conv2d_5_kernel_regularizer_l2loss_readvariableop_resource:АА
identityИв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp╢
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_5_kernel_regularizer_l2loss_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
а
B
&__inference_elu_6_layer_call_fn_212978

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_6_layer_call_and_return_conditional_losses_210250a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
▐#
╘
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_209529

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_209501*
output_shapes	
:А*#
then_branchR
cond_true_209500N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_209516*
output_shapes	
:А*%
then_branchR
cond_1_true_209515R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
л
J
"__inference__update_step_xla_29761
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
▐
~
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211687
inputs_0
inputs_1
identityZ
l2_normalize/SquareSquareinputs_0*
T0*(
_output_shapes
:         Їd
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :а
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+Н
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         h
l2_normalizeMulinputs_0l2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:         Ї\
l2_normalize_1/SquareSquareinputs_1*
T0*(
_output_shapes
:         Їf
$l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ж
l2_normalize_1/SumSuml2_normalize_1/Square:y:0-l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(]
l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+У
l2_normalize_1/MaximumMaximuml2_normalize_1/Sum:output:0!l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:         k
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:         l
l2_normalize_1Mulinputs_1l2_normalize_1/Rsqrt:y:0*
T0*(
_output_shapes
:         Їc
MulMull2_normalize:z:0l2_normalize_1:z:0*
T0*(
_output_shapes
:         ЇW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :a
SumSumMul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:         Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         q

ExpandDims
ExpandDimsSum:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:         [
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         Ї:         Ї:R N
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_1
Б

ў
C__inference_dense_1_layer_call_and_return_conditional_losses_210274

inputs2
matmul_readvariableop_resource:
шЇ.
biasadd_readvariableop_resource:	Ї
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
шЇ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Їs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         ЇS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┤
D
(__inference_flatten_layer_call_fn_212834

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_210220a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
З
В
cond_false_212720
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
╞#
╬
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211833

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╙
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*$
else_branchR
cond_false_211805*
output_shapes
:@*#
then_branchR
cond_true_211804M
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes
:@╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: с
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_211820*
output_shapes
:@*%
then_branchR
cond_1_true_211819Q
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes
:@╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ц
]
A__inference_elu_4_layer_call_and_return_conditional_losses_210175

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╜
P
"__inference__update_step_xla_29886
gradient
variable:
шЇ*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
шЇ: *
	_noinline(:J F
 
_output_shapes
:
шЇ
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╜
L
0__inference_max_pooling2d_3_layer_call_fn_212420

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_209433Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
J
"__inference__update_step_xla_29781
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Р
Ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212039

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
n
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212641

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П
g
cond_1_true_212002$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityb
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
╧
V
"__inference__update_step_xla_29766
gradient"
variable:

@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:

@@: *
	_noinline(:P L
&
_output_shapes
:

@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
В
_
cond_true_209350"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
п	
╒
6__inference_batch_normalization_7_layer_call_fn_213042

inputs
unknown:	Ї
	unknown_0:	Ї
	unknown_1:	Ї
	unknown_2:	Ї
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_209950p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Ї<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         Ї: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:&"
 
_user_specified_name213032:&"
 
_user_specified_name213034:&"
 
_user_specified_name213036:&"
 
_user_specified_name213038
з
М
cond_1_false_212552
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
с
│
D__inference_conv2d_2_layer_call_and_return_conditional_losses_212120

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88АЩ
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         88АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         88@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:         88@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╒
X
"__inference__update_step_xla_29806
gradient$
variable:АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:АА: *
	_noinline(:R N
(
_output_shapes
:АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
║	
╗
__inference_loss_fn_4_213185V
:conv2d_4_kernel_regularizer_l2loss_readvariableop_resource:АА
identityИв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp╢
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_4_kernel_regularizer_l2loss_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
Т

╤
6__inference_batch_normalization_1_layer_call_fn_211963

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_209102Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:&"
 
_user_specified_name211953:&"
 
_user_specified_name211955:&"
 
_user_specified_name211957:&"
 
_user_specified_name211959
л
J
"__inference__update_step_xla_29776
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
а
а
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212588

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ъ

╒
6__inference_batch_normalization_2_layer_call_fn_212146

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_209252К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212136:&"
 
_user_specified_name212138:&"
 
_user_specified_name212140:&"
 
_user_specified_name212142
Ъ

╒
6__inference_batch_normalization_4_layer_call_fn_212512

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_209552К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212502:&"
 
_user_specified_name212504:&"
 
_user_specified_name212506:&"
 
_user_specified_name212508
╞#
╬
O__inference_batch_normalization_layer_call_and_return_conditional_losses_208929

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╙
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*$
else_branchR
cond_false_208901*
output_shapes
:@*#
then_branchR
cond_true_208900M
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes
:@╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: с
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_208916*
output_shapes
:@*%
then_branchR
cond_1_true_208915Q
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes
:@╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╜
L
0__inference_max_pooling2d_4_layer_call_fn_212603

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_209583Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐#
╘
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_209379

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_209351*
output_shapes	
:А*#
then_branchR
cond_true_209350N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_209366*
output_shapes	
:А*%
then_branchR
cond_1_true_209365R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
°
Ш
(__inference_dense_1_layer_call_fn_213019

inputs
unknown:
шЇ
	unknown_0:	Ї
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_210274p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Ї<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:&"
 
_user_specified_name213013:&"
 
_user_specified_name213015
ю
m
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212646

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
P
4__inference_spatial_dropout2d_3_layer_call_fn_212435

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_209466Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_209583

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
О
Ъ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_208952

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о
K
"__inference__update_step_xla_29901
gradient
variable:	Ї*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Ї: *
	_noinline(:E A

_output_shapes	
:Ї
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ьD
╓
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_209844

inputs6
'assignmovingavg_readvariableop_resource:	ш8
)assignmovingavg_1_readvariableop_resource:	ш+
cast_readvariableop_resource:	ш-
cast_1_readvariableop_resource:	ш
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвCast/ReadVariableOpвCast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ш*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	шИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         шl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ш*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ш*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ш*
squeeze_dims
 I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskK
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: e
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:шv
SelectV2SelectV2Greater:z:0moments/Squeeze:output:0zeros_like:output:0*
T0*
_output_shapes	
:шM
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: g
zeros_like_1/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шW
zeros_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
zeros_like_1Fill%zeros_like_1/shape_as_tensor:output:0zeros_like_1/Const:output:0*
T0*
_output_shapes	
:ш~

SelectV2_1SelectV2Greater_1:z:0moments/Squeeze_1:output:0zeros_like_1:output:0*
T0*
_output_shapes	
:шK
Shape_1Shapeinputs*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ш*
dtype0{
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0SelectV2:output:0*
T0*
_output_shapes	
:шy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ш[
AssignMovingAvg/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Б
AssignMovingAvg/GreaterGreaterstrided_slice_1:output:0"AssignMovingAvg/Greater/y:output:0*
T0*
_output_shapes
: u
*AssignMovingAvg/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шe
 AssignMovingAvg/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
AssignMovingAvg/zeros_likeFill3AssignMovingAvg/zeros_like/shape_as_tensor:output:0)AssignMovingAvg/zeros_like/Const:output:0*
T0*
_output_shapes	
:ше
AssignMovingAvg/SelectV2SelectV2AssignMovingAvg/Greater:z:0AssignMovingAvg/mul:z:0#AssignMovingAvg/zeros_like:output:0*
T0*
_output_shapes	
:ш╢
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resource!AssignMovingAvg/SelectV2:output:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0Б
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0SelectV2_1:output:0*
T0*
_output_shapes	
:ш
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ш]
AssignMovingAvg_1/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Е
AssignMovingAvg_1/GreaterGreaterstrided_slice_1:output:0$AssignMovingAvg_1/Greater/y:output:0*
T0*
_output_shapes
: w
,AssignMovingAvg_1/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шg
"AssignMovingAvg_1/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
AssignMovingAvg_1/zeros_likeFill5AssignMovingAvg_1/zeros_like/shape_as_tensor:output:0+AssignMovingAvg_1/zeros_like/Const:output:0*
T0*
_output_shapes	
:шн
AssignMovingAvg_1/SelectV2SelectV2AssignMovingAvg_1/Greater:z:0AssignMovingAvg_1/mul:z:0%AssignMovingAvg_1/zeros_like:output:0*
T0*
_output_shapes	
:ш╛
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resource#AssignMovingAvg_1/SelectV2:output:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:k
batchnorm/addAddV2SelectV2_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:шQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:шn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:шd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         шb
batchnorm/mul_2MulSelectV2:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:шl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:шs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         шc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ш║
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
а
а
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_209402

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ж)
Й
6__inference_cowMuzzleSiameseModel_layer_call_fn_211343
imageinput1
imageinput2!
unknown:

@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:

@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
Аш

unknown_36:	ш

unknown_37:	ш

unknown_38:	ш

unknown_39:	ш

unknown_40:	ш

unknown_41:
шЇ

unknown_42:	Ї

unknown_43:	Ї

unknown_44:	Ї

unknown_45:	Ї

unknown_46:	Ї

unknown_47:

unknown_48:
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallimageinput1imageinput2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"#&'*+,-0123*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211032o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*│
_input_shapesб
Ю:         рр:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput1:^Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput2:&"
 
_user_specified_name211241:&"
 
_user_specified_name211243:&"
 
_user_specified_name211245:&"
 
_user_specified_name211247:&"
 
_user_specified_name211249:&"
 
_user_specified_name211251:&"
 
_user_specified_name211253:&	"
 
_user_specified_name211255:&
"
 
_user_specified_name211257:&"
 
_user_specified_name211259:&"
 
_user_specified_name211261:&"
 
_user_specified_name211263:&"
 
_user_specified_name211265:&"
 
_user_specified_name211267:&"
 
_user_specified_name211269:&"
 
_user_specified_name211271:&"
 
_user_specified_name211273:&"
 
_user_specified_name211275:&"
 
_user_specified_name211277:&"
 
_user_specified_name211279:&"
 
_user_specified_name211281:&"
 
_user_specified_name211283:&"
 
_user_specified_name211285:&"
 
_user_specified_name211287:&"
 
_user_specified_name211289:&"
 
_user_specified_name211291:&"
 
_user_specified_name211293:&"
 
_user_specified_name211295:&"
 
_user_specified_name211297:&"
 
_user_specified_name211299:& "
 
_user_specified_name211301:&!"
 
_user_specified_name211303:&""
 
_user_specified_name211305:&#"
 
_user_specified_name211307:&$"
 
_user_specified_name211309:&%"
 
_user_specified_name211311:&&"
 
_user_specified_name211313:&'"
 
_user_specified_name211315:&("
 
_user_specified_name211317:&)"
 
_user_specified_name211319:&*"
 
_user_specified_name211321:&+"
 
_user_specified_name211323:&,"
 
_user_specified_name211325:&-"
 
_user_specified_name211327:&."
 
_user_specified_name211329:&/"
 
_user_specified_name211331:&0"
 
_user_specified_name211333:&1"
 
_user_specified_name211335:&2"
 
_user_specified_name211337:&3"
 
_user_specified_name211339
Ъ

╒
6__inference_batch_normalization_3_layer_call_fn_212329

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_209402К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212319:&"
 
_user_specified_name212321:&"
 
_user_specified_name212323:&"
 
_user_specified_name212325
╖
N
"__inference__update_step_xla_29906
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╟
_
C__inference_flatten_layer_call_and_return_conditional_losses_212840

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
В
_
cond_true_209500"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
ю
m
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212829

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
_
cond_true_212170"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
ю
m
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_209616

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_212608

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
а
а
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_209702

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ыў
¤c
!__inference__wrapped_model_208876
imageinput1
imageinput2b
Hcowmuzzlesiamesemodel_imageencoder_conv2d_conv2d_readvariableop_resource:

@W
Icowmuzzlesiamesemodel_imageencoder_conv2d_biasadd_readvariableop_resource:@\
Ncowmuzzlesiamesemodel_imageencoder_batch_normalization_readvariableop_resource:@^
Pcowmuzzlesiamesemodel_imageencoder_batch_normalization_readvariableop_1_resource:@m
_cowmuzzlesiamesemodel_imageencoder_batch_normalization_fusedbatchnormv3_readvariableop_resource:@o
acowmuzzlesiamesemodel_imageencoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@d
Jcowmuzzlesiamesemodel_imageencoder_conv2d_1_conv2d_readvariableop_resource:

@@Y
Kcowmuzzlesiamesemodel_imageencoder_conv2d_1_biasadd_readvariableop_resource:@^
Pcowmuzzlesiamesemodel_imageencoder_batch_normalization_1_readvariableop_resource:@`
Rcowmuzzlesiamesemodel_imageencoder_batch_normalization_1_readvariableop_1_resource:@o
acowmuzzlesiamesemodel_imageencoder_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@q
ccowmuzzlesiamesemodel_imageencoder_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@e
Jcowmuzzlesiamesemodel_imageencoder_conv2d_2_conv2d_readvariableop_resource:@АZ
Kcowmuzzlesiamesemodel_imageencoder_conv2d_2_biasadd_readvariableop_resource:	А_
Pcowmuzzlesiamesemodel_imageencoder_batch_normalization_2_readvariableop_resource:	Аa
Rcowmuzzlesiamesemodel_imageencoder_batch_normalization_2_readvariableop_1_resource:	Аp
acowmuzzlesiamesemodel_imageencoder_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	Аr
ccowmuzzlesiamesemodel_imageencoder_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	Аf
Jcowmuzzlesiamesemodel_imageencoder_conv2d_3_conv2d_readvariableop_resource:ААZ
Kcowmuzzlesiamesemodel_imageencoder_conv2d_3_biasadd_readvariableop_resource:	А_
Pcowmuzzlesiamesemodel_imageencoder_batch_normalization_3_readvariableop_resource:	Аa
Rcowmuzzlesiamesemodel_imageencoder_batch_normalization_3_readvariableop_1_resource:	Аp
acowmuzzlesiamesemodel_imageencoder_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	Аr
ccowmuzzlesiamesemodel_imageencoder_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	Аf
Jcowmuzzlesiamesemodel_imageencoder_conv2d_4_conv2d_readvariableop_resource:ААZ
Kcowmuzzlesiamesemodel_imageencoder_conv2d_4_biasadd_readvariableop_resource:	А_
Pcowmuzzlesiamesemodel_imageencoder_batch_normalization_4_readvariableop_resource:	Аa
Rcowmuzzlesiamesemodel_imageencoder_batch_normalization_4_readvariableop_1_resource:	Аp
acowmuzzlesiamesemodel_imageencoder_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	Аr
ccowmuzzlesiamesemodel_imageencoder_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	Аf
Jcowmuzzlesiamesemodel_imageencoder_conv2d_5_conv2d_readvariableop_resource:ААZ
Kcowmuzzlesiamesemodel_imageencoder_conv2d_5_biasadd_readvariableop_resource:	А_
Pcowmuzzlesiamesemodel_imageencoder_batch_normalization_5_readvariableop_resource:	Аa
Rcowmuzzlesiamesemodel_imageencoder_batch_normalization_5_readvariableop_1_resource:	Аp
acowmuzzlesiamesemodel_imageencoder_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	Аr
ccowmuzzlesiamesemodel_imageencoder_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	А[
Gcowmuzzlesiamesemodel_imageencoder_dense_matmul_readvariableop_resource:
АшW
Hcowmuzzlesiamesemodel_imageencoder_dense_biasadd_readvariableop_resource:	шd
Ucowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_readvariableop_resource:	шf
Wcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_1_readvariableop_resource:	шf
Wcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_2_readvariableop_resource:	шf
Wcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_3_readvariableop_resource:	ш]
Icowmuzzlesiamesemodel_imageencoder_dense_1_matmul_readvariableop_resource:
шЇY
Jcowmuzzlesiamesemodel_imageencoder_dense_1_biasadd_readvariableop_resource:	Їd
Ucowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_readvariableop_resource:	Їf
Wcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_1_readvariableop_resource:	Їf
Wcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_2_readvariableop_resource:	Їf
Wcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_3_readvariableop_resource:	ЇT
Bcowmuzzlesiamesemodel_siameseoutput_matmul_readvariableop_resource:Q
Ccowmuzzlesiamesemodel_siameseoutput_biasadd_readvariableop_resource:
identityИвVcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOpвXcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1вXcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOpвZcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1вEcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOpвGcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_1вGcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_2вGcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_3вXcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1вZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpв\cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1вGcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOpвIcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_1вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_2вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_3вXcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1вZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpв\cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1вGcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOpвIcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_1вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_2вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_3вXcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1вZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOpв\cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp_1вGcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOpвIcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_1вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_2вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_3вXcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1вZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOpв\cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp_1вGcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOpвIcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_1вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_2вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_3вXcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOpвZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1вZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOpв\cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp_1вGcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOpвIcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_1вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_2вIcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_3вLcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_1/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_2/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_3/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_4/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_5/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_6/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_7/ReadVariableOpвLcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_1/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_2/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_3/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_4/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_5/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_6/ReadVariableOpвNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_7/ReadVariableOpв@cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1/ReadVariableOpв?cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd/ReadVariableOpвDcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D/ReadVariableOpвCcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd/ReadVariableOpвDcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D/ReadVariableOpвCcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd/ReadVariableOpвDcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D/ReadVariableOpвCcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd/ReadVariableOpвDcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D/ReadVariableOpвCcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd/ReadVariableOpвDcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D/ReadVariableOpвCcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1/ReadVariableOpв?cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1/ReadVariableOpв>cowMuzzleSiameseModel/imageEncoder/dense/MatMul/ReadVariableOpв@cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1/ReadVariableOpвAcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd/ReadVariableOpвCcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1/ReadVariableOpв@cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul/ReadVariableOpвBcowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1/ReadVariableOpв:cowMuzzleSiameseModel/siameseOutput/BiasAdd/ReadVariableOpв9cowMuzzleSiameseModel/siameseOutput/MatMul/ReadVariableOp╨
?cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D/ReadVariableOpReadVariableOpHcowmuzzlesiamesemodel_imageencoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0Ї
0cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2DConv2Dimageinput1GcowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
╞
@cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd/ReadVariableOpReadVariableOpIcowmuzzlesiamesemodel_imageencoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¤
1cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAddBiasAdd9cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D:output:0HcowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@┤
<cowMuzzleSiameseModel/imageEncoder/batch_normalization/ShapeShape:cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd:output:0*
T0*
_output_shapes
::э╧Ф
JcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
DcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_sliceStridedSliceEcowMuzzleSiameseModel/imageEncoder/batch_normalization/Shape:output:0ScowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice/stack:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice/stack_1:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╨
EcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOpReadVariableOpNcowmuzzlesiamesemodel_imageencoder_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype0╘
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_1ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype0Є
VcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp_cowmuzzlesiamesemodel_imageencoder_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ў
XcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0 
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3FusedBatchNormV3:cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd:output:0McowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp:value:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_1:value:0^cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         рр@:@:@:@:@:*
epsilon%oГ:*
is_training( ║
*cowMuzzleSiameseModel/imageEncoder/elu/EluEluKcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         рр@ъ
8cowMuzzleSiameseModel/imageEncoder/max_pooling2d/MaxPoolMaxPool8cowMuzzleSiameseModel/imageEncoder/elu/Elu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
╞
=cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d/IdentityIdentityAcowMuzzleSiameseModel/imageEncoder/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         pp@╘
AcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:

@@*
dtype0▒
2cowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2DConv2DFcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d/Identity:output:0IcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
╩
BcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Б
3cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAddBiasAdd;cowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D:output:0JcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@╕
>cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ShapeShape<cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd:output:0*
T0*
_output_shapes
::э╧Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_sliceStridedSliceGcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/Shape:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice/stack:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice/stack_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╘
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOpReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0╪
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_1ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ў
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0·
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Й
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3<cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd:output:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_1:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         pp@:@:@:@:@:*
epsilon%oГ:*
is_training( ╝
,cowMuzzleSiameseModel/imageEncoder/elu_1/EluEluMcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         pp@ю
:cowMuzzleSiameseModel/imageEncoder/max_pooling2d_1/MaxPoolMaxPool:cowMuzzleSiameseModel/imageEncoder/elu_1/Elu:activations:0*/
_output_shapes
:         88@*
ksize
*
paddingVALID*
strides
╩
?cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_1/IdentityIdentityCcowMuzzleSiameseModel/imageEncoder/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:         88@╒
AcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0┤
2cowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2DConv2DHcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_1/Identity:output:0IcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
╦
BcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0В
3cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAddBiasAdd;cowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D:output:0JcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А╕
>cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ShapeShape<cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd:output:0*
T0*
_output_shapes
::э╧Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_sliceStridedSliceGcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/Shape:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice/stack:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice/stack_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╒
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOpReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_2_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_1ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ў
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0√
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0О
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3<cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd:output:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_1:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         88А:А:А:А:А:*
epsilon%oГ:*
is_training( ╜
,cowMuzzleSiameseModel/imageEncoder/elu_2/EluEluMcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         88Ая
:cowMuzzleSiameseModel/imageEncoder/max_pooling2d_2/MaxPoolMaxPool:cowMuzzleSiameseModel/imageEncoder/elu_2/Elu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╦
?cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_2/IdentityIdentityCcowMuzzleSiameseModel/imageEncoder/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:         А╓
AcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┤
2cowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2DConv2DHcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_2/Identity:output:0IcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╦
BcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0В
3cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAddBiasAdd;cowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D:output:0JcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╕
>cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ShapeShape<cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd:output:0*
T0*
_output_shapes
::э╧Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_sliceStridedSliceGcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/Shape:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice/stack:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice/stack_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╒
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOpReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_1ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ў
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0√
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0О
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3<cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd:output:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_1:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ╜
,cowMuzzleSiameseModel/imageEncoder/elu_3/EluEluMcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Ая
:cowMuzzleSiameseModel/imageEncoder/max_pooling2d_3/MaxPoolMaxPool:cowMuzzleSiameseModel/imageEncoder/elu_3/Elu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╦
?cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_3/IdentityIdentityCcowMuzzleSiameseModel/imageEncoder/max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:         А╓
AcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┤
2cowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2DConv2DHcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_3/Identity:output:0IcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╦
BcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0В
3cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAddBiasAdd;cowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D:output:0JcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╕
>cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ShapeShape<cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd:output:0*
T0*
_output_shapes
::э╧Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_sliceStridedSliceGcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/Shape:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice/stack:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice/stack_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╒
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOpReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_1ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ў
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0√
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0О
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3<cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd:output:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_1:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ╜
,cowMuzzleSiameseModel/imageEncoder/elu_4/EluEluMcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Ая
:cowMuzzleSiameseModel/imageEncoder/max_pooling2d_4/MaxPoolMaxPool:cowMuzzleSiameseModel/imageEncoder/elu_4/Elu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╦
?cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_4/IdentityIdentityCcowMuzzleSiameseModel/imageEncoder/max_pooling2d_4/MaxPool:output:0*
T0*0
_output_shapes
:         А╓
AcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┤
2cowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2DConv2DHcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_4/Identity:output:0IcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
╦
BcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0В
3cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAddBiasAdd;cowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D:output:0JcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╕
>cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ShapeShape<cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd:output:0*
T0*
_output_shapes
::э╧Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_sliceStridedSliceGcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/Shape:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice/stack:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice/stack_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╒
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOpReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_1ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0ў
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0√
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0О
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3<cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd:output:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_1:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ╜
,cowMuzzleSiameseModel/imageEncoder/elu_5/EluEluMcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         Ая
:cowMuzzleSiameseModel/imageEncoder/max_pooling2d_5/MaxPoolMaxPool:cowMuzzleSiameseModel/imageEncoder/elu_5/Elu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╦
?cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_5/IdentityIdentityCcowMuzzleSiameseModel/imageEncoder/max_pooling2d_5/MaxPool:output:0*
T0*0
_output_shapes
:         АБ
0cowMuzzleSiameseModel/imageEncoder/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ї
2cowMuzzleSiameseModel/imageEncoder/flatten/ReshapeReshapeHcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_5/Identity:output:09cowMuzzleSiameseModel/imageEncoder/flatten/Const:output:0*
T0*(
_output_shapes
:         А╚
>cowMuzzleSiameseModel/imageEncoder/dense/MatMul/ReadVariableOpReadVariableOpGcowmuzzlesiamesemodel_imageencoder_dense_matmul_readvariableop_resource* 
_output_shapes
:
Аш*
dtype0ё
/cowMuzzleSiameseModel/imageEncoder/dense/MatMulMatMul;cowMuzzleSiameseModel/imageEncoder/flatten/Reshape:output:0FcowMuzzleSiameseModel/imageEncoder/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ш┼
?cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd/ReadVariableOpReadVariableOpHcowmuzzlesiamesemodel_imageencoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype0Є
0cowMuzzleSiameseModel/imageEncoder/dense/BiasAddBiasAdd9cowMuzzleSiameseModel/imageEncoder/dense/MatMul:product:0GcowMuzzleSiameseModel/imageEncoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ш▀
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast/ReadVariableOpReadVariableOpUcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_readvariableop_resource*
_output_shapes	
:ш*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_1/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_2/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_2_readvariableop_resource*
_output_shapes	
:ш*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_3/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_3_readvariableop_resource*
_output_shapes	
:ш*
dtype0Н
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:а
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/addAddV2VcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_1/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ш├
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/RsqrtRsqrtJcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:шЩ
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mulMulLcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/Rsqrt:y:0VcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:шЙ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mul_1Mul9cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd:output:0JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:         шЧ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mul_2MulTcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast/ReadVariableOp:value:0JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:шЩ
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/subSubVcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_2/ReadVariableOp:value:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:шЮ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/add_1AddV2LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/mul_1:z:0JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ш┤
,cowMuzzleSiameseModel/imageEncoder/elu_6/EluEluLcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         шо
3cowMuzzleSiameseModel/imageEncoder/dropout/IdentityIdentity:cowMuzzleSiameseModel/imageEncoder/elu_6/Elu:activations:0*
T0*(
_output_shapes
:         ш╠
@cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul/ReadVariableOpReadVariableOpIcowmuzzlesiamesemodel_imageencoder_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
шЇ*
dtype0Ў
1cowMuzzleSiameseModel/imageEncoder/dense_1/MatMulMatMul<cowMuzzleSiameseModel/imageEncoder/dropout/Identity:output:0HcowMuzzleSiameseModel/imageEncoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї╔
AcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype0°
2cowMuzzleSiameseModel/imageEncoder/dense_1/BiasAddBiasAdd;cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul:product:0IcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї▀
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast/ReadVariableOpReadVariableOpUcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_readvariableop_resource*
_output_shapes	
:Ї*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_1/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_2/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_2_readvariableop_resource*
_output_shapes	
:Ї*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_3/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_3_readvariableop_resource*
_output_shapes	
:Ї*
dtype0Н
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:а
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/addAddV2VcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_1/ReadVariableOp:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:Ї├
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/RsqrtRsqrtJcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:ЇЩ
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mulMulLcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/Rsqrt:y:0VcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:ЇЛ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mul_1Mul;cowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd:output:0JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:         ЇЧ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mul_2MulTcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast/ReadVariableOp:value:0JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:ЇЩ
FcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/subSubVcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_2/ReadVariableOp:value:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ЇЮ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/add_1AddV2LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/mul_1:z:0JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:         Ї┤
,cowMuzzleSiameseModel/imageEncoder/elu_7/EluEluLcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         Ї╥
AcowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1/ReadVariableOpReadVariableOpHcowmuzzlesiamesemodel_imageencoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0°
2cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1Conv2Dimageinput2IcowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
╚
BcowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1/ReadVariableOpReadVariableOpIcowmuzzlesiamesemodel_imageencoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Г
3cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1BiasAdd;cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1:output:0JcowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@╕
>cowMuzzleSiameseModel/imageEncoder/batch_normalization/Shape_1Shape<cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1:output:0*
T0*
_output_shapes
::э╧Ц
LcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
FcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1StridedSliceGcowMuzzleSiameseModel/imageEncoder/batch_normalization/Shape_1:output:0UcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1/stack:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1/stack_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_2ReadVariableOpNcowmuzzlesiamesemodel_imageencoder_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype0╘
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_3ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ї
XcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOp_cowmuzzlesiamesemodel_imageencoder_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0°
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Й
IcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3<cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1:output:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_2:value:0OcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_3:value:0`cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         рр@:@:@:@:@:*
epsilon%oГ:*
is_training( ╛
,cowMuzzleSiameseModel/imageEncoder/elu/Elu_1EluMcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1:y:0*
T0*1
_output_shapes
:         рр@ю
:cowMuzzleSiameseModel/imageEncoder/max_pooling2d/MaxPool_1MaxPool:cowMuzzleSiameseModel/imageEncoder/elu/Elu_1:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
╩
?cowMuzzleSiameseModel/imageEncoder/spatial_dropout2d/Identity_1IdentityCcowMuzzleSiameseModel/imageEncoder/max_pooling2d/MaxPool_1:output:0*
T0*/
_output_shapes
:         pp@╓
CcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:

@@*
dtype0╖
4cowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1Conv2DHcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d/Identity_1:output:0KcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@*
paddingSAME*
strides
╠
DcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0З
5cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1BiasAdd=cowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1:output:0LcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         pp@╝
@cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/Shape_1Shape>cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1:output:0*
T0*
_output_shapes
::э╧Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1StridedSliceIcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/Shape_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1/stack:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1/stack_1:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╓
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_2ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0╪
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_3ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0°
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0№
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0У
KcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3>cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1:output:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_2:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_3:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0dcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         pp@:@:@:@:@:*
epsilon%oГ:*
is_training( └
.cowMuzzleSiameseModel/imageEncoder/elu_1/Elu_1EluOcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:         pp@Є
<cowMuzzleSiameseModel/imageEncoder/max_pooling2d_1/MaxPool_1MaxPool<cowMuzzleSiameseModel/imageEncoder/elu_1/Elu_1:activations:0*/
_output_shapes
:         88@*
ksize
*
paddingVALID*
strides
╬
AcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_1/Identity_1IdentityEcowMuzzleSiameseModel/imageEncoder/max_pooling2d_1/MaxPool_1:output:0*
T0*/
_output_shapes
:         88@╫
CcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0║
4cowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1Conv2DJcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_1/Identity_1:output:0KcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
═
DcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0И
5cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1BiasAdd=cowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1:output:0LcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А╝
@cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/Shape_1Shape>cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1:output:0*
T0*
_output_shapes
::э╧Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1StridedSliceIcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/Shape_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1/stack:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1/stack_1:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╫
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_2ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_2_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_3ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:А*
dtype0∙
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0¤
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ш
KcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3>cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1:output:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_2:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_3:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0dcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         88А:А:А:А:А:*
epsilon%oГ:*
is_training( ┴
.cowMuzzleSiameseModel/imageEncoder/elu_2/Elu_1EluOcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:         88Ає
<cowMuzzleSiameseModel/imageEncoder/max_pooling2d_2/MaxPool_1MaxPool<cowMuzzleSiameseModel/imageEncoder/elu_2/Elu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╧
AcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_2/Identity_1IdentityEcowMuzzleSiameseModel/imageEncoder/max_pooling2d_2/MaxPool_1:output:0*
T0*0
_output_shapes
:         А╪
CcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0║
4cowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1Conv2DJcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_2/Identity_1:output:0KcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
═
DcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0И
5cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1BiasAdd=cowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1:output:0LcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╝
@cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/Shape_1Shape>cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1:output:0*
T0*
_output_shapes
::э╧Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1StridedSliceIcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/Shape_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1/stack:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1/stack_1:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╫
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_2ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_3_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_3ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0∙
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0¤
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ш
KcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1FusedBatchNormV3>cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1:output:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_2:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_3:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp:value:0dcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ┴
.cowMuzzleSiameseModel/imageEncoder/elu_3/Elu_1EluOcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:         Ає
<cowMuzzleSiameseModel/imageEncoder/max_pooling2d_3/MaxPool_1MaxPool<cowMuzzleSiameseModel/imageEncoder/elu_3/Elu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╧
AcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_3/Identity_1IdentityEcowMuzzleSiameseModel/imageEncoder/max_pooling2d_3/MaxPool_1:output:0*
T0*0
_output_shapes
:         А╪
CcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0║
4cowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1Conv2DJcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_3/Identity_1:output:0KcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
═
DcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0И
5cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1BiasAdd=cowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1:output:0LcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╝
@cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/Shape_1Shape>cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1:output:0*
T0*
_output_shapes
::э╧Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1StridedSliceIcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/Shape_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1/stack:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1/stack_1:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╫
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_2ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_4_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_3ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:А*
dtype0∙
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0¤
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ш
KcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1FusedBatchNormV3>cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1:output:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_2:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_3:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp:value:0dcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ┴
.cowMuzzleSiameseModel/imageEncoder/elu_4/Elu_1EluOcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:         Ає
<cowMuzzleSiameseModel/imageEncoder/max_pooling2d_4/MaxPool_1MaxPool<cowMuzzleSiameseModel/imageEncoder/elu_4/Elu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╧
AcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_4/Identity_1IdentityEcowMuzzleSiameseModel/imageEncoder/max_pooling2d_4/MaxPool_1:output:0*
T0*0
_output_shapes
:         А╪
CcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0║
4cowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1Conv2DJcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_4/Identity_1:output:0KcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
═
DcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1/ReadVariableOpReadVariableOpKcowmuzzlesiamesemodel_imageencoder_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0И
5cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1BiasAdd=cowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1:output:0LcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А╝
@cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/Shape_1Shape>cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1:output:0*
T0*
_output_shapes
::э╧Ш
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ъ
PcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1StridedSliceIcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/Shape_1:output:0WcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1/stack:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1/stack_1:output:0YcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╫
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_2ReadVariableOpPcowmuzzlesiamesemodel_imageencoder_batch_normalization_5_readvariableop_resource*
_output_shapes	
:А*
dtype0┘
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_3ReadVariableOpRcowmuzzlesiamesemodel_imageencoder_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:А*
dtype0∙
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOpReadVariableOpacowmuzzlesiamesemodel_imageencoder_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0¤
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpccowmuzzlesiamesemodel_imageencoder_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ш
KcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1FusedBatchNormV3>cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1:output:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_2:value:0QcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_3:value:0bcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp:value:0dcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( ┴
.cowMuzzleSiameseModel/imageEncoder/elu_5/Elu_1EluOcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:         Ає
<cowMuzzleSiameseModel/imageEncoder/max_pooling2d_5/MaxPool_1MaxPool<cowMuzzleSiameseModel/imageEncoder/elu_5/Elu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╧
AcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_5/Identity_1IdentityEcowMuzzleSiameseModel/imageEncoder/max_pooling2d_5/MaxPool_1:output:0*
T0*0
_output_shapes
:         АГ
2cowMuzzleSiameseModel/imageEncoder/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"     	  √
4cowMuzzleSiameseModel/imageEncoder/flatten/Reshape_1ReshapeJcowMuzzleSiameseModel/imageEncoder/spatial_dropout2d_5/Identity_1:output:0;cowMuzzleSiameseModel/imageEncoder/flatten/Const_1:output:0*
T0*(
_output_shapes
:         А╩
@cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1/ReadVariableOpReadVariableOpGcowmuzzlesiamesemodel_imageencoder_dense_matmul_readvariableop_resource* 
_output_shapes
:
Аш*
dtype0ў
1cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1MatMul=cowMuzzleSiameseModel/imageEncoder/flatten/Reshape_1:output:0HcowMuzzleSiameseModel/imageEncoder/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ш╟
AcowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1/ReadVariableOpReadVariableOpHcowmuzzlesiamesemodel_imageencoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype0°
2cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1BiasAdd;cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1:product:0IcowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         шс
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_4/ReadVariableOpReadVariableOpUcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_readvariableop_resource*
_output_shapes	
:ш*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_5/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_6/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_2_readvariableop_resource*
_output_shapes	
:ш*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_7/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_6_cast_3_readvariableop_resource*
_output_shapes	
:ш*
dtype0П
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:д
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/addAddV2VcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_5/ReadVariableOp:value:0ScowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/add/y:output:0*
T0*
_output_shapes	
:ш╟
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/RsqrtRsqrtLcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/add:z:0*
T0*
_output_shapes	
:шЭ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mulMulNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/Rsqrt:y:0VcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:шП
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mul_1Mul;cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1:output:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mul:z:0*
T0*(
_output_shapes
:         шЭ
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mul_2MulVcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_4/ReadVariableOp:value:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mul:z:0*
T0*
_output_shapes	
:шЭ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/subSubVcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_6/ReadVariableOp:value:0NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mul_2:z:0*
T0*
_output_shapes	
:шд
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/add_1AddV2NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/mul_1:z:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/sub:z:0*
T0*(
_output_shapes
:         ш╕
.cowMuzzleSiameseModel/imageEncoder/elu_6/Elu_1EluNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/batchnorm_1/add_1:z:0*
T0*(
_output_shapes
:         ш▓
5cowMuzzleSiameseModel/imageEncoder/dropout/Identity_1Identity<cowMuzzleSiameseModel/imageEncoder/elu_6/Elu_1:activations:0*
T0*(
_output_shapes
:         ш╬
BcowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1/ReadVariableOpReadVariableOpIcowmuzzlesiamesemodel_imageencoder_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
шЇ*
dtype0№
3cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1MatMul>cowMuzzleSiameseModel/imageEncoder/dropout/Identity_1:output:0JcowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї╦
CcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1/ReadVariableOpReadVariableOpJcowmuzzlesiamesemodel_imageencoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype0■
4cowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1BiasAdd=cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1:product:0KcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Їс
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_4/ReadVariableOpReadVariableOpUcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_readvariableop_resource*
_output_shapes	
:Ї*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_5/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_6/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_2_readvariableop_resource*
_output_shapes	
:Ї*
dtype0у
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_7/ReadVariableOpReadVariableOpWcowmuzzlesiamesemodel_imageencoder_batch_normalization_7_cast_3_readvariableop_resource*
_output_shapes	
:Ї*
dtype0П
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:д
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/addAddV2VcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_5/ReadVariableOp:value:0ScowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/add/y:output:0*
T0*
_output_shapes	
:Ї╟
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/RsqrtRsqrtLcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/add:z:0*
T0*
_output_shapes	
:ЇЭ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mulMulNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/Rsqrt:y:0VcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:ЇС
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mul_1Mul=cowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1:output:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mul:z:0*
T0*(
_output_shapes
:         ЇЭ
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mul_2MulVcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_4/ReadVariableOp:value:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mul:z:0*
T0*
_output_shapes	
:ЇЭ
HcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/subSubVcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_6/ReadVariableOp:value:0NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mul_2:z:0*
T0*
_output_shapes	
:Їд
JcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/add_1AddV2NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/mul_1:z:0LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/sub:z:0*
T0*(
_output_shapes
:         Ї╕
.cowMuzzleSiameseModel/imageEncoder/elu_7/Elu_1EluNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/batchnorm_1/add_1:z:0*
T0*(
_output_shapes
:         Ї╣
@cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/SquareSquare:cowMuzzleSiameseModel/imageEncoder/elu_7/Elu:activations:0*
T0*(
_output_shapes
:         ЇС
OcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :з
=cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/SumSumDcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Square:y:0XcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(И
CcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+Ф
AcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/MaximumMaximumFcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Sum:output:0LcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         ┴
?cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/RsqrtRsqrtEcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         Ї
9cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalizeMul:cowMuzzleSiameseModel/imageEncoder/elu_7/Elu:activations:0CcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:         Ї╜
BcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/SquareSquare<cowMuzzleSiameseModel/imageEncoder/elu_7/Elu_1:activations:0*
T0*(
_output_shapes
:         ЇУ
QcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :н
?cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/SumSumFcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Square:y:0ZcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(К
EcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+Ъ
CcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/MaximumMaximumHcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Sum:output:0NcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:         ┼
AcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/RsqrtRsqrtGcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:         ·
;cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1Mul<cowMuzzleSiameseModel/imageEncoder/elu_7/Elu_1:activations:0EcowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1/Rsqrt:y:0*
T0*(
_output_shapes
:         Їъ
0cowMuzzleSiameseModel/cosineSimilarityMetric/MulMul=cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize:z:0?cowMuzzleSiameseModel/cosineSimilarityMetric/l2_normalize_1:z:0*
T0*(
_output_shapes
:         ЇД
BcowMuzzleSiameseModel/cosineSimilarityMetric/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ш
0cowMuzzleSiameseModel/cosineSimilarityMetric/SumSum4cowMuzzleSiameseModel/cosineSimilarityMetric/Mul:z:0KcowMuzzleSiameseModel/cosineSimilarityMetric/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:         Ж
;cowMuzzleSiameseModel/cosineSimilarityMetric/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         °
7cowMuzzleSiameseModel/cosineSimilarityMetric/ExpandDims
ExpandDims9cowMuzzleSiameseModel/cosineSimilarityMetric/Sum:output:0DcowMuzzleSiameseModel/cosineSimilarityMetric/ExpandDims/dim:output:0*
T0*'
_output_shapes
:         ╝
9cowMuzzleSiameseModel/siameseOutput/MatMul/ReadVariableOpReadVariableOpBcowmuzzlesiamesemodel_siameseoutput_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ы
*cowMuzzleSiameseModel/siameseOutput/MatMulMatMul@cowMuzzleSiameseModel/cosineSimilarityMetric/ExpandDims:output:0AcowMuzzleSiameseModel/siameseOutput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ║
:cowMuzzleSiameseModel/siameseOutput/BiasAdd/ReadVariableOpReadVariableOpCcowmuzzlesiamesemodel_siameseoutput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0т
+cowMuzzleSiameseModel/siameseOutput/BiasAddBiasAdd4cowMuzzleSiameseModel/siameseOutput/MatMul:product:0BcowMuzzleSiameseModel/siameseOutput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ю
+cowMuzzleSiameseModel/siameseOutput/SoftmaxSoftmax4cowMuzzleSiameseModel/siameseOutput/BiasAdd:output:0*
T0*'
_output_shapes
:         Д
IdentityIdentity5cowMuzzleSiameseModel/siameseOutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         √;
NoOpNoOpW^cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOpY^cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Y^cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp[^cowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1F^cowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOpH^cowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_1H^cowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_2H^cowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_3Y^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp]^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1H^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOpJ^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_1J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_2J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_3Y^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp]^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1H^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOpJ^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_1J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_2J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_3Y^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp]^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp_1H^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOpJ^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_1J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_2J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_3Y^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp]^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp_1H^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOpJ^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_1J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_2J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_3Y^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1[^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp]^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp_1H^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOpJ^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_1J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_2J^cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_3M^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_1/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_2/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_3/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_4/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_5/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_6/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_7/ReadVariableOpM^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_1/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_2/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_3/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_4/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_5/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_6/ReadVariableOpO^cowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_7/ReadVariableOpA^cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1/ReadVariableOp@^cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd/ReadVariableOpE^cowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D/ReadVariableOpD^cowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd/ReadVariableOpE^cowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D/ReadVariableOpD^cowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd/ReadVariableOpE^cowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D/ReadVariableOpD^cowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd/ReadVariableOpE^cowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D/ReadVariableOpD^cowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd/ReadVariableOpE^cowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D/ReadVariableOpD^cowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1/ReadVariableOp@^cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1/ReadVariableOp?^cowMuzzleSiameseModel/imageEncoder/dense/MatMul/ReadVariableOpA^cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1/ReadVariableOpB^cowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd/ReadVariableOpD^cowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1/ReadVariableOpA^cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul/ReadVariableOpC^cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1/ReadVariableOp;^cowMuzzleSiameseModel/siameseOutput/BiasAdd/ReadVariableOp:^cowMuzzleSiameseModel/siameseOutput/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*│
_input_shapesб
Ю:         рр:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2░
VcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOpVcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp2┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1XcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_12┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOpXcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ZcowMuzzleSiameseModel/imageEncoder/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12О
EcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOpEcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp2Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_1GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_12Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_2GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_22Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_3GcowMuzzleSiameseModel/imageEncoder/batch_normalization/ReadVariableOp_32┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOpXcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpZcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2╝
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1\cowMuzzleSiameseModel/imageEncoder/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOpGcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp2Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_1IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_12Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_2IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_22Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_3IcowMuzzleSiameseModel/imageEncoder/batch_normalization_1/ReadVariableOp_32┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOpXcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpZcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2╝
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1\cowMuzzleSiameseModel/imageEncoder/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOpGcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp2Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_1IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_12Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_2IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_22Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_3IcowMuzzleSiameseModel/imageEncoder/batch_normalization_2/ReadVariableOp_32┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOpXcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOpZcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp2╝
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp_1\cowMuzzleSiameseModel/imageEncoder/batch_normalization_3/FusedBatchNormV3_1/ReadVariableOp_12Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOpGcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp2Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_1IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_12Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_2IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_22Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_3IcowMuzzleSiameseModel/imageEncoder/batch_normalization_3/ReadVariableOp_32┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOpXcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOpZcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp2╝
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp_1\cowMuzzleSiameseModel/imageEncoder/batch_normalization_4/FusedBatchNormV3_1/ReadVariableOp_12Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOpGcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp2Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_1IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_12Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_2IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_22Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_3IcowMuzzleSiameseModel/imageEncoder/batch_normalization_4/ReadVariableOp_32┤
XcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOpXcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12╕
ZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOpZcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp2╝
\cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp_1\cowMuzzleSiameseModel/imageEncoder/batch_normalization_5/FusedBatchNormV3_1/ReadVariableOp_12Т
GcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOpGcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp2Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_1IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_12Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_2IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_22Ц
IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_3IcowMuzzleSiameseModel/imageEncoder/batch_normalization_5/ReadVariableOp_32Ь
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast/ReadVariableOpLcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_1/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_1/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_2/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_2/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_3/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_3/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_4/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_4/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_5/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_5/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_6/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_6/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_7/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_6/Cast_7/ReadVariableOp2Ь
LcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast/ReadVariableOpLcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_1/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_1/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_2/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_2/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_3/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_3/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_4/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_4/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_5/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_5/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_6/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_6/ReadVariableOp2а
NcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_7/ReadVariableOpNcowMuzzleSiameseModel/imageEncoder/batch_normalization_7/Cast_7/ReadVariableOp2Д
@cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd/ReadVariableOp@cowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/conv2d/BiasAdd_1/ReadVariableOp2В
?cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D/ReadVariableOp?cowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/conv2d/Conv2D_1/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd/ReadVariableOp2М
DcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1/ReadVariableOpDcowMuzzleSiameseModel/imageEncoder/conv2d_1/BiasAdd_1/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D/ReadVariableOp2К
CcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1/ReadVariableOpCcowMuzzleSiameseModel/imageEncoder/conv2d_1/Conv2D_1/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd/ReadVariableOp2М
DcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1/ReadVariableOpDcowMuzzleSiameseModel/imageEncoder/conv2d_2/BiasAdd_1/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D/ReadVariableOp2К
CcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1/ReadVariableOpCcowMuzzleSiameseModel/imageEncoder/conv2d_2/Conv2D_1/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd/ReadVariableOp2М
DcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1/ReadVariableOpDcowMuzzleSiameseModel/imageEncoder/conv2d_3/BiasAdd_1/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D/ReadVariableOp2К
CcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1/ReadVariableOpCcowMuzzleSiameseModel/imageEncoder/conv2d_3/Conv2D_1/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd/ReadVariableOp2М
DcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1/ReadVariableOpDcowMuzzleSiameseModel/imageEncoder/conv2d_4/BiasAdd_1/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D/ReadVariableOp2К
CcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1/ReadVariableOpCcowMuzzleSiameseModel/imageEncoder/conv2d_4/Conv2D_1/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd/ReadVariableOp2М
DcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1/ReadVariableOpDcowMuzzleSiameseModel/imageEncoder/conv2d_5/BiasAdd_1/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D/ReadVariableOp2К
CcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1/ReadVariableOpCcowMuzzleSiameseModel/imageEncoder/conv2d_5/Conv2D_1/ReadVariableOp2В
?cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd/ReadVariableOp?cowMuzzleSiameseModel/imageEncoder/dense/BiasAdd/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/dense/BiasAdd_1/ReadVariableOp2А
>cowMuzzleSiameseModel/imageEncoder/dense/MatMul/ReadVariableOp>cowMuzzleSiameseModel/imageEncoder/dense/MatMul/ReadVariableOp2Д
@cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1/ReadVariableOp@cowMuzzleSiameseModel/imageEncoder/dense/MatMul_1/ReadVariableOp2Ж
AcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd/ReadVariableOpAcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd/ReadVariableOp2К
CcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1/ReadVariableOpCcowMuzzleSiameseModel/imageEncoder/dense_1/BiasAdd_1/ReadVariableOp2Д
@cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul/ReadVariableOp@cowMuzzleSiameseModel/imageEncoder/dense_1/MatMul/ReadVariableOp2И
BcowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1/ReadVariableOpBcowMuzzleSiameseModel/imageEncoder/dense_1/MatMul_1/ReadVariableOp2x
:cowMuzzleSiameseModel/siameseOutput/BiasAdd/ReadVariableOp:cowMuzzleSiameseModel/siameseOutput/BiasAdd/ReadVariableOp2v
9cowMuzzleSiameseModel/siameseOutput/MatMul/ReadVariableOp9cowMuzzleSiameseModel/siameseOutput/MatMul/ReadVariableOp:^ Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput1:^Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput2:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource
╦
н
B__inference_conv2d_layer_call_and_return_conditional_losses_210012

inputs8
conv2d_readvariableop_resource:

@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@Ц
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         рр@Е
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_211876

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Я
а
)__inference_conv2d_2_layer_call_fn_212106

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_210084x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         88@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         88@
 
_user_specified_nameinputs:&"
 
_user_specified_name212100:&"
 
_user_specified_name212102
В
Б
cond_false_208901
cond_placeholder*
cond_readvariableop_resource:@
cond_identityИвcond/ReadVariableOpl
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes
:@*
dtype0g
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes
:@=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2*
cond/ReadVariableOpcond/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
┼
P
4__inference_spatial_dropout2d_5_layer_call_fn_212801

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_209766Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 	
ї
A__inference_dense_layer_call_and_return_conditional_losses_210231

inputs2
matmul_readvariableop_resource:
Аш.
biasadd_readvariableop_resource:	ш
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Аш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         шs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ш`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         шS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╜
L
0__inference_max_pooling2d_5_layer_call_fn_212786

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_209733Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_209133

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
Б
cond_false_211805
cond_placeholder*
cond_readvariableop_resource:@
cond_identityИвcond/ReadVariableOpl
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes
:@*
dtype0g
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes
:@=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2*
cond/ReadVariableOpcond/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
в
б
)__inference_conv2d_5_layer_call_fn_212655

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_210192x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:&"
 
_user_specified_name212649:&"
 
_user_specified_name212651
о
K
"__inference__update_step_xla_29816
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ц
┤
D__inference_conv2d_4_layer_call_and_return_conditional_losses_210156

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ц
]
A__inference_elu_4_layer_call_and_return_conditional_losses_212598

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
П
g
cond_1_true_211819$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityb
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
┤
И
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_209864

inputs+
cast_readvariableop_resource:	ш-
cast_1_readvariableop_resource:	ш-
cast_2_readvariableop_resource:	ш-
cast_3_readvariableop_resource:	ш
identityИвCast/ReadVariableOpвCast_1/ReadVariableOpвCast_2/ReadVariableOpвCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:ш*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:шQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:шn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:шd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         шl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:шn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:шs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         шc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         шА
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▐#
╘
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212565

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_212537*
output_shapes	
:А*#
then_branchR
cond_true_212536N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_212552*
output_shapes	
:А*%
then_branchR
cond_1_true_212551R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┼
P
4__inference_spatial_dropout2d_2_layer_call_fn_212252

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_209316Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└
B
&__inference_elu_2_layer_call_fn_212227

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_2_layer_call_and_return_conditional_losses_210103i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         88А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         88А:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_212791

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦┴
╤S
"__inference__traced_restore_214341
file_prefix7
%assignvariableop_siameseoutput_kernel:3
%assignvariableop_1_siameseoutput_bias::
 assignvariableop_2_conv2d_kernel:

@,
assignvariableop_3_conv2d_bias:@:
,assignvariableop_4_batch_normalization_gamma:@9
+assignvariableop_5_batch_normalization_beta:@@
2assignvariableop_6_batch_normalization_moving_mean:@D
6assignvariableop_7_batch_normalization_moving_variance:@<
"assignvariableop_8_conv2d_1_kernel:

@@.
 assignvariableop_9_conv2d_1_bias:@=
/assignvariableop_10_batch_normalization_1_gamma:@<
.assignvariableop_11_batch_normalization_1_beta:@C
5assignvariableop_12_batch_normalization_1_moving_mean:@G
9assignvariableop_13_batch_normalization_1_moving_variance:@>
#assignvariableop_14_conv2d_2_kernel:@А0
!assignvariableop_15_conv2d_2_bias:	А>
/assignvariableop_16_batch_normalization_2_gamma:	А=
.assignvariableop_17_batch_normalization_2_beta:	АD
5assignvariableop_18_batch_normalization_2_moving_mean:	АH
9assignvariableop_19_batch_normalization_2_moving_variance:	А?
#assignvariableop_20_conv2d_3_kernel:АА0
!assignvariableop_21_conv2d_3_bias:	А>
/assignvariableop_22_batch_normalization_3_gamma:	А=
.assignvariableop_23_batch_normalization_3_beta:	АD
5assignvariableop_24_batch_normalization_3_moving_mean:	АH
9assignvariableop_25_batch_normalization_3_moving_variance:	А?
#assignvariableop_26_conv2d_4_kernel:АА0
!assignvariableop_27_conv2d_4_bias:	А>
/assignvariableop_28_batch_normalization_4_gamma:	А=
.assignvariableop_29_batch_normalization_4_beta:	АD
5assignvariableop_30_batch_normalization_4_moving_mean:	АH
9assignvariableop_31_batch_normalization_4_moving_variance:	А?
#assignvariableop_32_conv2d_5_kernel:АА0
!assignvariableop_33_conv2d_5_bias:	А>
/assignvariableop_34_batch_normalization_5_gamma:	А=
.assignvariableop_35_batch_normalization_5_beta:	АD
5assignvariableop_36_batch_normalization_5_moving_mean:	АH
9assignvariableop_37_batch_normalization_5_moving_variance:	А4
 assignvariableop_38_dense_kernel:
Аш-
assignvariableop_39_dense_bias:	ш>
/assignvariableop_40_batch_normalization_6_gamma:	ш=
.assignvariableop_41_batch_normalization_6_beta:	шD
5assignvariableop_42_batch_normalization_6_moving_mean:	шH
9assignvariableop_43_batch_normalization_6_moving_variance:	ш6
"assignvariableop_44_dense_1_kernel:
шЇ/
 assignvariableop_45_dense_1_bias:	Ї>
/assignvariableop_46_batch_normalization_7_gamma:	Ї=
.assignvariableop_47_batch_normalization_7_beta:	ЇD
5assignvariableop_48_batch_normalization_7_moving_mean:	ЇH
9assignvariableop_49_batch_normalization_7_moving_variance:	Ї'
assignvariableop_50_iteration:	 +
!assignvariableop_51_learning_rate: B
(assignvariableop_52_adam_m_conv2d_kernel:

@B
(assignvariableop_53_adam_v_conv2d_kernel:

@4
&assignvariableop_54_adam_m_conv2d_bias:@4
&assignvariableop_55_adam_v_conv2d_bias:@B
4assignvariableop_56_adam_m_batch_normalization_gamma:@B
4assignvariableop_57_adam_v_batch_normalization_gamma:@A
3assignvariableop_58_adam_m_batch_normalization_beta:@A
3assignvariableop_59_adam_v_batch_normalization_beta:@D
*assignvariableop_60_adam_m_conv2d_1_kernel:

@@D
*assignvariableop_61_adam_v_conv2d_1_kernel:

@@6
(assignvariableop_62_adam_m_conv2d_1_bias:@6
(assignvariableop_63_adam_v_conv2d_1_bias:@D
6assignvariableop_64_adam_m_batch_normalization_1_gamma:@D
6assignvariableop_65_adam_v_batch_normalization_1_gamma:@C
5assignvariableop_66_adam_m_batch_normalization_1_beta:@C
5assignvariableop_67_adam_v_batch_normalization_1_beta:@E
*assignvariableop_68_adam_m_conv2d_2_kernel:@АE
*assignvariableop_69_adam_v_conv2d_2_kernel:@А7
(assignvariableop_70_adam_m_conv2d_2_bias:	А7
(assignvariableop_71_adam_v_conv2d_2_bias:	АE
6assignvariableop_72_adam_m_batch_normalization_2_gamma:	АE
6assignvariableop_73_adam_v_batch_normalization_2_gamma:	АD
5assignvariableop_74_adam_m_batch_normalization_2_beta:	АD
5assignvariableop_75_adam_v_batch_normalization_2_beta:	АF
*assignvariableop_76_adam_m_conv2d_3_kernel:ААF
*assignvariableop_77_adam_v_conv2d_3_kernel:АА7
(assignvariableop_78_adam_m_conv2d_3_bias:	А7
(assignvariableop_79_adam_v_conv2d_3_bias:	АE
6assignvariableop_80_adam_m_batch_normalization_3_gamma:	АE
6assignvariableop_81_adam_v_batch_normalization_3_gamma:	АD
5assignvariableop_82_adam_m_batch_normalization_3_beta:	АD
5assignvariableop_83_adam_v_batch_normalization_3_beta:	АF
*assignvariableop_84_adam_m_conv2d_4_kernel:ААF
*assignvariableop_85_adam_v_conv2d_4_kernel:АА7
(assignvariableop_86_adam_m_conv2d_4_bias:	А7
(assignvariableop_87_adam_v_conv2d_4_bias:	АE
6assignvariableop_88_adam_m_batch_normalization_4_gamma:	АE
6assignvariableop_89_adam_v_batch_normalization_4_gamma:	АD
5assignvariableop_90_adam_m_batch_normalization_4_beta:	АD
5assignvariableop_91_adam_v_batch_normalization_4_beta:	АF
*assignvariableop_92_adam_m_conv2d_5_kernel:ААF
*assignvariableop_93_adam_v_conv2d_5_kernel:АА7
(assignvariableop_94_adam_m_conv2d_5_bias:	А7
(assignvariableop_95_adam_v_conv2d_5_bias:	АE
6assignvariableop_96_adam_m_batch_normalization_5_gamma:	АE
6assignvariableop_97_adam_v_batch_normalization_5_gamma:	АD
5assignvariableop_98_adam_m_batch_normalization_5_beta:	АD
5assignvariableop_99_adam_v_batch_normalization_5_beta:	А<
(assignvariableop_100_adam_m_dense_kernel:
Аш<
(assignvariableop_101_adam_v_dense_kernel:
Аш5
&assignvariableop_102_adam_m_dense_bias:	ш5
&assignvariableop_103_adam_v_dense_bias:	шF
7assignvariableop_104_adam_m_batch_normalization_6_gamma:	шF
7assignvariableop_105_adam_v_batch_normalization_6_gamma:	шE
6assignvariableop_106_adam_m_batch_normalization_6_beta:	шE
6assignvariableop_107_adam_v_batch_normalization_6_beta:	ш>
*assignvariableop_108_adam_m_dense_1_kernel:
шЇ>
*assignvariableop_109_adam_v_dense_1_kernel:
шЇ7
(assignvariableop_110_adam_m_dense_1_bias:	Ї7
(assignvariableop_111_adam_v_dense_1_bias:	ЇF
7assignvariableop_112_adam_m_batch_normalization_7_gamma:	ЇF
7assignvariableop_113_adam_v_batch_normalization_7_gamma:	ЇE
6assignvariableop_114_adam_m_batch_normalization_7_beta:	ЇE
6assignvariableop_115_adam_v_batch_normalization_7_beta:	ЇB
0assignvariableop_116_adam_m_siameseoutput_kernel:B
0assignvariableop_117_adam_v_siameseoutput_kernel:<
.assignvariableop_118_adam_m_siameseoutput_bias:<
.assignvariableop_119_adam_v_siameseoutput_bias:&
assignvariableop_120_total_1: &
assignvariableop_121_count_1: $
assignvariableop_122_total: $
assignvariableop_123_count: 
identity_125ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_100вAssignVariableOp_101вAssignVariableOp_102вAssignVariableOp_103вAssignVariableOp_104вAssignVariableOp_105вAssignVariableOp_106вAssignVariableOp_107вAssignVariableOp_108вAssignVariableOp_109вAssignVariableOp_11вAssignVariableOp_110вAssignVariableOp_111вAssignVariableOp_112вAssignVariableOp_113вAssignVariableOp_114вAssignVariableOp_115вAssignVariableOp_116вAssignVariableOp_117вAssignVariableOp_118вAssignVariableOp_119вAssignVariableOp_12вAssignVariableOp_120вAssignVariableOp_121вAssignVariableOp_122вAssignVariableOp_123вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91вAssignVariableOp_92вAssignVariableOp_93вAssignVariableOp_94вAssignVariableOp_95вAssignVariableOp_96вAssignVariableOp_97вAssignVariableOp_98вAssignVariableOp_99з/
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:}*
dtype0*═.
value├.B└.}B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHэ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:}*
dtype0*П
valueЕBВ}B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ф
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesў
Ї:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*М
dtypesБ
2}	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOpAssignVariableOp%assignvariableop_siameseoutput_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_1AssignVariableOp%assignvariableop_1_siameseoutput_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_4AssignVariableOp,assignvariableop_4_batch_normalization_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_5AssignVariableOp+assignvariableop_5_batch_normalization_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_6AssignVariableOp2assignvariableop_6_batch_normalization_moving_meanIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_7AssignVariableOp6assignvariableop_7_batch_normalization_moving_varianceIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_1_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batch_normalization_1_betaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_12AssignVariableOp5assignvariableop_12_batch_normalization_1_moving_meanIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_13AssignVariableOp9assignvariableop_13_batch_normalization_1_moving_varianceIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_2_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_2_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_2_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_2_moving_meanIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_2_moving_varianceIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_3_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_3_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_22AssignVariableOp/assignvariableop_22_batch_normalization_3_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_23AssignVariableOp.assignvariableop_23_batch_normalization_3_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_24AssignVariableOp5assignvariableop_24_batch_normalization_3_moving_meanIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_25AssignVariableOp9assignvariableop_25_batch_normalization_3_moving_varianceIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_26AssignVariableOp#assignvariableop_26_conv2d_4_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_27AssignVariableOp!assignvariableop_27_conv2d_4_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_28AssignVariableOp/assignvariableop_28_batch_normalization_4_gammaIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_29AssignVariableOp.assignvariableop_29_batch_normalization_4_betaIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_30AssignVariableOp5assignvariableop_30_batch_normalization_4_moving_meanIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_31AssignVariableOp9assignvariableop_31_batch_normalization_4_moving_varianceIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_32AssignVariableOp#assignvariableop_32_conv2d_5_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_33AssignVariableOp!assignvariableop_33_conv2d_5_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_34AssignVariableOp/assignvariableop_34_batch_normalization_5_gammaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_35AssignVariableOp.assignvariableop_35_batch_normalization_5_betaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_36AssignVariableOp5assignvariableop_36_batch_normalization_5_moving_meanIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_37AssignVariableOp9assignvariableop_37_batch_normalization_5_moving_varianceIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_38AssignVariableOp assignvariableop_38_dense_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_39AssignVariableOpassignvariableop_39_dense_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_40AssignVariableOp/assignvariableop_40_batch_normalization_6_gammaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_41AssignVariableOp.assignvariableop_41_batch_normalization_6_betaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_42AssignVariableOp5assignvariableop_42_batch_normalization_6_moving_meanIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_43AssignVariableOp9assignvariableop_43_batch_normalization_6_moving_varianceIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_44AssignVariableOp"assignvariableop_44_dense_1_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_45AssignVariableOp assignvariableop_45_dense_1_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_46AssignVariableOp/assignvariableop_46_batch_normalization_7_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_47AssignVariableOp.assignvariableop_47_batch_normalization_7_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_48AssignVariableOp5assignvariableop_48_batch_normalization_7_moving_meanIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_49AssignVariableOp9assignvariableop_49_batch_normalization_7_moving_varianceIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_50AssignVariableOpassignvariableop_50_iterationIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_51AssignVariableOp!assignvariableop_51_learning_rateIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_m_conv2d_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_v_conv2d_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_m_conv2d_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_55AssignVariableOp&assignvariableop_55_adam_v_conv2d_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_56AssignVariableOp4assignvariableop_56_adam_m_batch_normalization_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_57AssignVariableOp4assignvariableop_57_adam_v_batch_normalization_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_58AssignVariableOp3assignvariableop_58_adam_m_batch_normalization_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_59AssignVariableOp3assignvariableop_59_adam_v_batch_normalization_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_m_conv2d_1_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_v_conv2d_1_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_m_conv2d_1_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_v_conv2d_1_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_m_batch_normalization_1_gammaIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_65AssignVariableOp6assignvariableop_65_adam_v_batch_normalization_1_gammaIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_66AssignVariableOp5assignvariableop_66_adam_m_batch_normalization_1_betaIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_v_batch_normalization_1_betaIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_m_conv2d_2_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_v_conv2d_2_kernelIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_m_conv2d_2_biasIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_v_conv2d_2_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_m_batch_normalization_2_gammaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_73AssignVariableOp6assignvariableop_73_adam_v_batch_normalization_2_gammaIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_74AssignVariableOp5assignvariableop_74_adam_m_batch_normalization_2_betaIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_75AssignVariableOp5assignvariableop_75_adam_v_batch_normalization_2_betaIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_m_conv2d_3_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_v_conv2d_3_kernelIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_m_conv2d_3_biasIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_79AssignVariableOp(assignvariableop_79_adam_v_conv2d_3_biasIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adam_m_batch_normalization_3_gammaIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_81AssignVariableOp6assignvariableop_81_adam_v_batch_normalization_3_gammaIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_82AssignVariableOp5assignvariableop_82_adam_m_batch_normalization_3_betaIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_83AssignVariableOp5assignvariableop_83_adam_v_batch_normalization_3_betaIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_m_conv2d_4_kernelIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_v_conv2d_4_kernelIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_m_conv2d_4_biasIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_87AssignVariableOp(assignvariableop_87_adam_v_conv2d_4_biasIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_88AssignVariableOp6assignvariableop_88_adam_m_batch_normalization_4_gammaIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adam_v_batch_normalization_4_gammaIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_90AssignVariableOp5assignvariableop_90_adam_m_batch_normalization_4_betaIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_91AssignVariableOp5assignvariableop_91_adam_v_batch_normalization_4_betaIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_92AssignVariableOp*assignvariableop_92_adam_m_conv2d_5_kernelIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_93AssignVariableOp*assignvariableop_93_adam_v_conv2d_5_kernelIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_94AssignVariableOp(assignvariableop_94_adam_m_conv2d_5_biasIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_95AssignVariableOp(assignvariableop_95_adam_v_conv2d_5_biasIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_96AssignVariableOp6assignvariableop_96_adam_m_batch_normalization_5_gammaIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_97AssignVariableOp6assignvariableop_97_adam_v_batch_normalization_5_gammaIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_98AssignVariableOp5assignvariableop_98_adam_m_batch_normalization_5_betaIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_99AssignVariableOp5assignvariableop_99_adam_v_batch_normalization_5_betaIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_100AssignVariableOp(assignvariableop_100_adam_m_dense_kernelIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_101AssignVariableOp(assignvariableop_101_adam_v_dense_kernelIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_102AssignVariableOp&assignvariableop_102_adam_m_dense_biasIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_103AssignVariableOp&assignvariableop_103_adam_v_dense_biasIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adam_m_batch_normalization_6_gammaIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_105AssignVariableOp7assignvariableop_105_adam_v_batch_normalization_6_gammaIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:╤
AssignVariableOp_106AssignVariableOp6assignvariableop_106_adam_m_batch_normalization_6_betaIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:╤
AssignVariableOp_107AssignVariableOp6assignvariableop_107_adam_v_batch_normalization_6_betaIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_m_dense_1_kernelIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_109AssignVariableOp*assignvariableop_109_adam_v_dense_1_kernelIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_110AssignVariableOp(assignvariableop_110_adam_m_dense_1_biasIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_111AssignVariableOp(assignvariableop_111_adam_v_dense_1_biasIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_112AssignVariableOp7assignvariableop_112_adam_m_batch_normalization_7_gammaIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_113AssignVariableOp7assignvariableop_113_adam_v_batch_normalization_7_gammaIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:╤
AssignVariableOp_114AssignVariableOp6assignvariableop_114_adam_m_batch_normalization_7_betaIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:╤
AssignVariableOp_115AssignVariableOp6assignvariableop_115_adam_v_batch_normalization_7_betaIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_116AssignVariableOp0assignvariableop_116_adam_m_siameseoutput_kernelIdentity_116:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_117AssignVariableOp0assignvariableop_117_adam_v_siameseoutput_kernelIdentity_117:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_118AssignVariableOp.assignvariableop_118_adam_m_siameseoutput_biasIdentity_118:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_119AssignVariableOp.assignvariableop_119_adam_v_siameseoutput_biasIdentity_119:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_120AssignVariableOpassignvariableop_120_total_1Identity_120:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_121AssignVariableOpassignvariableop_121_count_1Identity_121:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_122AssignVariableOpassignvariableop_122_totalIdentity_122:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_123AssignVariableOpassignvariableop_123_countIdentity_123:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Р
Identity_124Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_125IdentityIdentity_124:output:0^NoOp_1*
T0*
_output_shapes
: ╪
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_125Identity_125:output:0*(
_construction_contextkEagerRuntime*П
_input_shapes¤
·: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_namesiameseOutput/kernel:2.
,
_user_specified_namesiameseOutput/bias:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:/	+
)
_user_specified_nameconv2d_1/kernel:-
)
'
_user_specified_nameconv2d_1/bias:;7
5
_user_specified_namebatch_normalization_1/gamma::6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:/+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_4/bias:;7
5
_user_specified_namebatch_normalization_4/gamma::6
4
_user_specified_namebatch_normalization_4/beta:A=
;
_user_specified_name#!batch_normalization_4/moving_mean:E A
?
_user_specified_name'%batch_normalization_4/moving_variance:/!+
)
_user_specified_nameconv2d_5/kernel:-")
'
_user_specified_nameconv2d_5/bias:;#7
5
_user_specified_namebatch_normalization_5/gamma::$6
4
_user_specified_namebatch_normalization_5/beta:A%=
;
_user_specified_name#!batch_normalization_5/moving_mean:E&A
?
_user_specified_name'%batch_normalization_5/moving_variance:,'(
&
_user_specified_namedense/kernel:*(&
$
_user_specified_name
dense/bias:;)7
5
_user_specified_namebatch_normalization_6/gamma::*6
4
_user_specified_namebatch_normalization_6/beta:A+=
;
_user_specified_name#!batch_normalization_6/moving_mean:E,A
?
_user_specified_name'%batch_normalization_6/moving_variance:.-*
(
_user_specified_namedense_1/kernel:,.(
&
_user_specified_namedense_1/bias:;/7
5
_user_specified_namebatch_normalization_7/gamma::06
4
_user_specified_namebatch_normalization_7/beta:A1=
;
_user_specified_name#!batch_normalization_7/moving_mean:E2A
?
_user_specified_name'%batch_normalization_7/moving_variance:)3%
#
_user_specified_name	iteration:-4)
'
_user_specified_namelearning_rate:450
.
_user_specified_nameAdam/m/conv2d/kernel:460
.
_user_specified_nameAdam/v/conv2d/kernel:27.
,
_user_specified_nameAdam/m/conv2d/bias:28.
,
_user_specified_nameAdam/v/conv2d/bias:@9<
:
_user_specified_name" Adam/m/batch_normalization/gamma:@:<
:
_user_specified_name" Adam/v/batch_normalization/gamma:?;;
9
_user_specified_name!Adam/m/batch_normalization/beta:?<;
9
_user_specified_name!Adam/v/batch_normalization/beta:6=2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6>2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4?0
.
_user_specified_nameAdam/m/conv2d_1/bias:4@0
.
_user_specified_nameAdam/v/conv2d_1/bias:BA>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:BB>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:AC=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:AD=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:6E2
0
_user_specified_nameAdam/m/conv2d_2/kernel:6F2
0
_user_specified_nameAdam/v/conv2d_2/kernel:4G0
.
_user_specified_nameAdam/m/conv2d_2/bias:4H0
.
_user_specified_nameAdam/v/conv2d_2/bias:BI>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:BJ>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:AK=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:AL=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:6M2
0
_user_specified_nameAdam/m/conv2d_3/kernel:6N2
0
_user_specified_nameAdam/v/conv2d_3/kernel:4O0
.
_user_specified_nameAdam/m/conv2d_3/bias:4P0
.
_user_specified_nameAdam/v/conv2d_3/bias:BQ>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:BR>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:AS=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:AT=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:6U2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6V2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4W0
.
_user_specified_nameAdam/m/conv2d_4/bias:4X0
.
_user_specified_nameAdam/v/conv2d_4/bias:BY>
<
_user_specified_name$"Adam/m/batch_normalization_4/gamma:BZ>
<
_user_specified_name$"Adam/v/batch_normalization_4/gamma:A[=
;
_user_specified_name#!Adam/m/batch_normalization_4/beta:A\=
;
_user_specified_name#!Adam/v/batch_normalization_4/beta:6]2
0
_user_specified_nameAdam/m/conv2d_5/kernel:6^2
0
_user_specified_nameAdam/v/conv2d_5/kernel:4_0
.
_user_specified_nameAdam/m/conv2d_5/bias:4`0
.
_user_specified_nameAdam/v/conv2d_5/bias:Ba>
<
_user_specified_name$"Adam/m/batch_normalization_5/gamma:Bb>
<
_user_specified_name$"Adam/v/batch_normalization_5/gamma:Ac=
;
_user_specified_name#!Adam/m/batch_normalization_5/beta:Ad=
;
_user_specified_name#!Adam/v/batch_normalization_5/beta:3e/
-
_user_specified_nameAdam/m/dense/kernel:3f/
-
_user_specified_nameAdam/v/dense/kernel:1g-
+
_user_specified_nameAdam/m/dense/bias:1h-
+
_user_specified_nameAdam/v/dense/bias:Bi>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:Bj>
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:Ak=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:Al=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:5m1
/
_user_specified_nameAdam/m/dense_1/kernel:5n1
/
_user_specified_nameAdam/v/dense_1/kernel:3o/
-
_user_specified_nameAdam/m/dense_1/bias:3p/
-
_user_specified_nameAdam/v/dense_1/bias:Bq>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:Br>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:As=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:At=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:;u7
5
_user_specified_nameAdam/m/siameseOutput/kernel:;v7
5
_user_specified_nameAdam/v/siameseOutput/kernel:9w5
3
_user_specified_nameAdam/m/siameseOutput/bias:9x5
3
_user_specified_nameAdam/v/siameseOutput/bias:'y#
!
_user_specified_name	total_1:'z#
!
_user_specified_name	count_1:%{!

_user_specified_nametotal:%|!

_user_specified_namecount
╟
c
7__inference_cosineSimilarityMetric_layer_call_fn_211657
inputs_0
inputs_1
identity╧
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_210989`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         Ї:         Ї:R N
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_1
В
_
cond_true_209200"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
╢	
╣
__inference_loss_fn_1_213161T
:conv2d_1_kernel_regularizer_l2loss_readvariableop_resource:

@@
identityИв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp┤
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_1_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
о
K
"__inference__update_step_xla_29896
gradient
variable:	Ї*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Ї: *
	_noinline(:E A

_output_shapes	
:Ї
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
У
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_209433

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 
_
cond_true_211804"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity^
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
┼
P
4__inference_spatial_dropout2d_1_layer_call_fn_212069

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_209166Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐#
╘
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_209229

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_209201*
output_shapes	
:А*#
then_branchR
cond_true_209200N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_209216*
output_shapes	
:А*%
then_branchR
cond_1_true_209215R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┴
N
2__inference_spatial_dropout2d_layer_call_fn_211886

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *V
fQRO
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_209016Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
а
а
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_209552

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ш

╒
6__inference_batch_normalization_5_layer_call_fn_212682

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_209679К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212672:&"
 
_user_specified_name212674:&"
 
_user_specified_name212676:&"
 
_user_specified_name212678
Т
g
cond_1_true_209665$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
д
D
(__inference_dropout_layer_call_fn_212993

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_210445a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
Т
n
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_209611

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Я
Ь
'__inference_conv2d_layer_call_fn_211740

inputs!
unknown:

@
	unknown_0:@
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_210012y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         рр@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs:&"
 
_user_specified_name211734:&"
 
_user_specified_name211736
л
J
"__inference__update_step_xla_29756
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
П
g
cond_1_true_208915$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityb
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
З
В
cond_false_209351
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
з
М
cond_1_false_212369
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
┤
И
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_209970

inputs+
cast_readvariableop_resource:	Ї-
cast_1_readvariableop_resource:	Ї-
cast_2_readvariableop_resource:	Ї-
cast_3_readvariableop_resource:	Ї
identityИвCast/ReadVariableOpвCast_1/ReadVariableOpвCast_2/ReadVariableOpвCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:Ї*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ЇQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:Їn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:Їd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Їl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Їn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Їs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Їc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ЇА
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         Ї: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╧
V
"__inference__update_step_xla_29746
gradient"
variable:

@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:

@: *
	_noinline(:P L
&
_output_shapes
:

@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
О
Ъ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211856

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ш
[
?__inference_elu_layer_call_and_return_conditional_losses_210031

inputs
identityN
EluEluinputs*
T0*1
_output_shapes
:         рр@c
IdentityIdentityElu:activations:0*
T0*1
_output_shapes
:         рр@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         рр@:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
Ю

b
C__inference_dropout_layer_call_and_return_conditional_losses_213005

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         шQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ш*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         шT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         шb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
є
m
4__inference_spatial_dropout2d_4_layer_call_fn_212613

inputs
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_209611Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ц
┤
D__inference_conv2d_4_layer_call_and_return_conditional_losses_212486

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
g
cond_1_true_209215$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
Ят
╖
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320
input_1'
conv2d_210013:

@
conv2d_210015:@(
batch_normalization_210018:@(
batch_normalization_210020:@(
batch_normalization_210022:@(
batch_normalization_210024:@)
conv2d_1_210049:

@@
conv2d_1_210051:@*
batch_normalization_1_210054:@*
batch_normalization_1_210056:@*
batch_normalization_1_210058:@*
batch_normalization_1_210060:@*
conv2d_2_210085:@А
conv2d_2_210087:	А+
batch_normalization_2_210090:	А+
batch_normalization_2_210092:	А+
batch_normalization_2_210094:	А+
batch_normalization_2_210096:	А+
conv2d_3_210121:АА
conv2d_3_210123:	А+
batch_normalization_3_210126:	А+
batch_normalization_3_210128:	А+
batch_normalization_3_210130:	А+
batch_normalization_3_210132:	А+
conv2d_4_210157:АА
conv2d_4_210159:	А+
batch_normalization_4_210162:	А+
batch_normalization_4_210164:	А+
batch_normalization_4_210166:	А+
batch_normalization_4_210168:	А+
conv2d_5_210193:АА
conv2d_5_210195:	А+
batch_normalization_5_210198:	А+
batch_normalization_5_210200:	А+
batch_normalization_5_210202:	А+
batch_normalization_5_210204:	А 
dense_210232:
Аш
dense_210234:	ш+
batch_normalization_6_210237:	ш+
batch_normalization_6_210239:	ш+
batch_normalization_6_210241:	ш+
batch_normalization_6_210243:	ш"
dense_1_210275:
шЇ
dense_1_210277:	Ї+
batch_normalization_7_210280:	Ї+
batch_normalization_7_210282:	Ї+
batch_normalization_7_210284:	Ї+
batch_normalization_7_210286:	Ї
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallв-batch_normalization_4/StatefulPartitionedCallв-batch_normalization_5/StatefulPartitionedCallв-batch_normalization_6/StatefulPartitionedCallв-batch_normalization_7/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_1/StatefulPartitionedCallв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_2/StatefulPartitionedCallв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_3/StatefulPartitionedCallв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_4/StatefulPartitionedCallв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_5/StatefulPartitionedCallв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв)spatial_dropout2d/StatefulPartitionedCallв+spatial_dropout2d_1/StatefulPartitionedCallв+spatial_dropout2d_2/StatefulPartitionedCallв+spatial_dropout2d_3/StatefulPartitionedCallв+spatial_dropout2d_4/StatefulPartitionedCallв+spatial_dropout2d_5/StatefulPartitionedCall°
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_210013conv2d_210015*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_210012Ж
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_210018batch_normalization_210020batch_normalization_210022batch_normalization_210024*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_208929ы
elu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *H
fCRA
?__inference_elu_layer_call_and_return_conditional_losses_210031х
max_pooling2d/PartitionedCallPartitionedCallelu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_208983З
)spatial_dropout2d/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *V
fQRO
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_209011й
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout2d/StatefulPartitionedCall:output:0conv2d_1_210049conv2d_1_210051*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_210048Т
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_210054batch_normalization_1_210056batch_normalization_1_210058batch_normalization_1_210060*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_209079я
elu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_1_layer_call_and_return_conditional_losses_210067ы
max_pooling2d_1/PartitionedCallPartitionedCallelu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_209133╣
+spatial_dropout2d_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*^spatial_dropout2d/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         88@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_209161м
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_1/StatefulPartitionedCall:output:0conv2d_2_210085conv2d_2_210087*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_210084У
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_210090batch_normalization_2_210092batch_normalization_2_210094batch_normalization_2_210096*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_209229Ё
elu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_2_layer_call_and_return_conditional_losses_210103ь
max_pooling2d_2/PartitionedCallPartitionedCallelu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_209283╝
+spatial_dropout2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0,^spatial_dropout2d_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_209311м
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_2/StatefulPartitionedCall:output:0conv2d_3_210121conv2d_3_210123*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_210120У
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_210126batch_normalization_3_210128batch_normalization_3_210130batch_normalization_3_210132*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_209379Ё
elu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_3_layer_call_and_return_conditional_losses_210139ь
max_pooling2d_3/PartitionedCallPartitionedCallelu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_209433╝
+spatial_dropout2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0,^spatial_dropout2d_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_209461м
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_3/StatefulPartitionedCall:output:0conv2d_4_210157conv2d_4_210159*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_210156У
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_210162batch_normalization_4_210164batch_normalization_4_210166batch_normalization_4_210168*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_209529Ё
elu_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_4_layer_call_and_return_conditional_losses_210175ь
max_pooling2d_4/PartitionedCallPartitionedCallelu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_209583╝
+spatial_dropout2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0,^spatial_dropout2d_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_209611м
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_4/StatefulPartitionedCall:output:0conv2d_5_210193conv2d_5_210195*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_210192У
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_5_210198batch_normalization_5_210200batch_normalization_5_210202batch_normalization_5_210204*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_209679Ё
elu_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_5_layer_call_and_return_conditional_losses_210211ь
max_pooling2d_5/PartitionedCallPartitionedCallelu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_209733╝
+spatial_dropout2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0,^spatial_dropout2d_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_209761ъ
flatten/PartitionedCallPartitionedCall4spatial_dropout2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_210220Д
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_210232dense_210234*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_210231И
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_6_210237batch_normalization_6_210239batch_normalization_6_210241batch_normalization_6_210243*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_209844ш
elu_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_6_layer_call_and_return_conditional_losses_210250Т
dropout/StatefulPartitionedCallStatefulPartitionedCallelu_6/PartitionedCall:output:0,^spatial_dropout2d_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_210263Ф
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_210275dense_1_210277*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_210274К
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_7_210280batch_normalization_7_210282batch_normalization_7_210284batch_normalization_7_210286*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_209950ш
elu_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_7_layer_call_and_return_conditional_losses_210293Е
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_210013*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Й
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_1_210049*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: К
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_2_210085*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_3_210121*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_4_210157*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_5_210193*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentityelu_7/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ЇЬ

NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall^conv2d/StatefulPartitionedCall0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_1/StatefulPartitionedCall2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_2/StatefulPartitionedCall2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*^spatial_dropout2d/StatefulPartitionedCall,^spatial_dropout2d_1/StatefulPartitionedCall,^spatial_dropout2d_2/StatefulPartitionedCall,^spatial_dropout2d_3/StatefulPartitionedCall,^spatial_dropout2d_4/StatefulPartitionedCall,^spatial_dropout2d_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes
}:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2V
)spatial_dropout2d/StatefulPartitionedCall)spatial_dropout2d/StatefulPartitionedCall2Z
+spatial_dropout2d_1/StatefulPartitionedCall+spatial_dropout2d_1/StatefulPartitionedCall2Z
+spatial_dropout2d_2/StatefulPartitionedCall+spatial_dropout2d_2/StatefulPartitionedCall2Z
+spatial_dropout2d_3/StatefulPartitionedCall+spatial_dropout2d_3/StatefulPartitionedCall2Z
+spatial_dropout2d_4/StatefulPartitionedCall+spatial_dropout2d_4/StatefulPartitionedCall2Z
+spatial_dropout2d_5/StatefulPartitionedCall+spatial_dropout2d_5/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1:&"
 
_user_specified_name210013:&"
 
_user_specified_name210015:&"
 
_user_specified_name210018:&"
 
_user_specified_name210020:&"
 
_user_specified_name210022:&"
 
_user_specified_name210024:&"
 
_user_specified_name210049:&"
 
_user_specified_name210051:&	"
 
_user_specified_name210054:&
"
 
_user_specified_name210056:&"
 
_user_specified_name210058:&"
 
_user_specified_name210060:&"
 
_user_specified_name210085:&"
 
_user_specified_name210087:&"
 
_user_specified_name210090:&"
 
_user_specified_name210092:&"
 
_user_specified_name210094:&"
 
_user_specified_name210096:&"
 
_user_specified_name210121:&"
 
_user_specified_name210123:&"
 
_user_specified_name210126:&"
 
_user_specified_name210128:&"
 
_user_specified_name210130:&"
 
_user_specified_name210132:&"
 
_user_specified_name210157:&"
 
_user_specified_name210159:&"
 
_user_specified_name210162:&"
 
_user_specified_name210164:&"
 
_user_specified_name210166:&"
 
_user_specified_name210168:&"
 
_user_specified_name210193:& "
 
_user_specified_name210195:&!"
 
_user_specified_name210198:&""
 
_user_specified_name210200:&#"
 
_user_specified_name210202:&$"
 
_user_specified_name210204:&%"
 
_user_specified_name210232:&&"
 
_user_specified_name210234:&'"
 
_user_specified_name210237:&("
 
_user_specified_name210239:&)"
 
_user_specified_name210241:&*"
 
_user_specified_name210243:&+"
 
_user_specified_name210275:&,"
 
_user_specified_name210277:&-"
 
_user_specified_name210280:&."
 
_user_specified_name210282:&/"
 
_user_specified_name210284:&0"
 
_user_specified_name210286
Ю

b
C__inference_dropout_layer_call_and_return_conditional_losses_210263

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         шQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ш*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         шT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         шb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
Т
g
cond_1_true_209365$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
з
М
cond_1_false_212186
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
о
K
"__inference__update_step_xla_29796
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
└
B
&__inference_elu_3_layer_call_fn_212410

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_3_layer_call_and_return_conditional_losses_210139i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Т
n
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_209311

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
З
В
cond_false_209501
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
Т
g
cond_1_true_212185$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
В
_
cond_true_212353"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
 
_
cond_true_209050"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity^
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
╞
]
A__inference_elu_7_layer_call_and_return_conditional_losses_210293

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:         ЇZ
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:         Ї"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Ї:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29861
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 	
ї
A__inference_dense_layer_call_and_return_conditional_losses_212859

inputs2
matmul_readvariableop_resource:
Аш.
biasadd_readvariableop_resource:	ш
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Аш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         шs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ш*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ш`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         шS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
З
В
cond_false_212171
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
╒
X
"__inference__update_step_xla_29846
gradient$
variable:АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:АА: *
	_noinline(:R N
(
_output_shapes
:АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ь
k
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211914

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
P
4__inference_spatial_dropout2d_4_layer_call_fn_212618

inputs
identityт
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_209616Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29811
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Р
l
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_209011

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ь
k
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_209016

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
є
m
4__inference_spatial_dropout2d_1_layer_call_fn_212064

inputs
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_209161Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└
@
$__inference_elu_layer_call_fn_211861

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *H
fCRA
?__inference_elu_layer_call_and_return_conditional_losses_210031j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         рр@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         рр@:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
ц
]
A__inference_elu_2_layer_call_and_return_conditional_losses_212232

inputs
identityM
EluEluinputs*
T0*0
_output_shapes
:         88Аb
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:         88А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         88А:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
┤
И
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212973

inputs+
cast_readvariableop_resource:	ш-
cast_1_readvariableop_resource:	ш-
cast_2_readvariableop_resource:	ш-
cast_3_readvariableop_resource:	ш
identityИвCast/ReadVariableOpвCast_1/ReadVariableOpвCast_2/ReadVariableOpвCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:ш*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:шQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:шn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:шd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         шl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:шn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:шs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         шc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         шА
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
n
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_209461

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29871
gradient
variable:	ш*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:ш: *
	_noinline(:E A

_output_shapes	
:ш
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
┤
И
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213135

inputs+
cast_readvariableop_resource:	Ї-
cast_1_readvariableop_resource:	Ї-
cast_2_readvariableop_resource:	Ї-
cast_3_readvariableop_resource:	Ї
identityИвCast/ReadVariableOpвCast_1/ReadVariableOpвCast_2/ReadVariableOpвCast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:Ї*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ЇQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:Їn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:Їd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Їl
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Їn
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Їs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Їc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ЇА
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         Ї: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
а
B
&__inference_elu_7_layer_call_fn_213140

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_7_layer_call_and_return_conditional_losses_210293a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Ї"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         Ї:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
┤&
│
-__inference_imageEncoder_layer_call_fn_210689
input_1!
unknown:

@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:

@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
Аш

unknown_36:	ш

unknown_37:	ш

unknown_38:	ш

unknown_39:	ш

unknown_40:	ш

unknown_41:
шЇ

unknown_42:	Ї

unknown_43:	Ї

unknown_44:	Ї

unknown_45:	Ї

unknown_46:	Ї
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./0*2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Ї<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes
}:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_1:&"
 
_user_specified_name210591:&"
 
_user_specified_name210593:&"
 
_user_specified_name210595:&"
 
_user_specified_name210597:&"
 
_user_specified_name210599:&"
 
_user_specified_name210601:&"
 
_user_specified_name210603:&"
 
_user_specified_name210605:&	"
 
_user_specified_name210607:&
"
 
_user_specified_name210609:&"
 
_user_specified_name210611:&"
 
_user_specified_name210613:&"
 
_user_specified_name210615:&"
 
_user_specified_name210617:&"
 
_user_specified_name210619:&"
 
_user_specified_name210621:&"
 
_user_specified_name210623:&"
 
_user_specified_name210625:&"
 
_user_specified_name210627:&"
 
_user_specified_name210629:&"
 
_user_specified_name210631:&"
 
_user_specified_name210633:&"
 
_user_specified_name210635:&"
 
_user_specified_name210637:&"
 
_user_specified_name210639:&"
 
_user_specified_name210641:&"
 
_user_specified_name210643:&"
 
_user_specified_name210645:&"
 
_user_specified_name210647:&"
 
_user_specified_name210649:&"
 
_user_specified_name210651:& "
 
_user_specified_name210653:&!"
 
_user_specified_name210655:&""
 
_user_specified_name210657:&#"
 
_user_specified_name210659:&$"
 
_user_specified_name210661:&%"
 
_user_specified_name210663:&&"
 
_user_specified_name210665:&'"
 
_user_specified_name210667:&("
 
_user_specified_name210669:&)"
 
_user_specified_name210671:&*"
 
_user_specified_name210673:&+"
 
_user_specified_name210675:&,"
 
_user_specified_name210677:&-"
 
_user_specified_name210679:&."
 
_user_specified_name210681:&/"
 
_user_specified_name210683:&0"
 
_user_specified_name210685
З
В
cond_false_212537
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
У
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_209283

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╟
_
C__inference_flatten_layer_call_and_return_conditional_losses_210220

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     	  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ш

╒
6__inference_batch_normalization_2_layer_call_fn_212133

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_209229К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212123:&"
 
_user_specified_name212125:&"
 
_user_specified_name212127:&"
 
_user_specified_name212129
Р

╤
6__inference_batch_normalization_1_layer_call_fn_211950

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_209079Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:&"
 
_user_specified_name211940:&"
 
_user_specified_name211942:&"
 
_user_specified_name211944:&"
 
_user_specified_name211946
л
J
"__inference__update_step_xla_29911
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
а
а
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212405

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
n
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_209761

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29836
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Б

ў
C__inference_dense_1_layer_call_and_return_conditional_losses_213029

inputs2
matmul_readvariableop_resource:
шЇ.
biasadd_readvariableop_resource:	Ї
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
шЇ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Їs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         ЇS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
═
P
"__inference__update_step_xla_29866
gradient
variable:
Аш*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:         ш: *
	_noinline(:R N
(
_output_shapes
:         ш
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
хн
эw
__inference__traced_save_213960
file_prefix=
+read_disablecopyonread_siameseoutput_kernel:9
+read_1_disablecopyonread_siameseoutput_bias:@
&read_2_disablecopyonread_conv2d_kernel:

@2
$read_3_disablecopyonread_conv2d_bias:@@
2read_4_disablecopyonread_batch_normalization_gamma:@?
1read_5_disablecopyonread_batch_normalization_beta:@F
8read_6_disablecopyonread_batch_normalization_moving_mean:@J
<read_7_disablecopyonread_batch_normalization_moving_variance:@B
(read_8_disablecopyonread_conv2d_1_kernel:

@@4
&read_9_disablecopyonread_conv2d_1_bias:@C
5read_10_disablecopyonread_batch_normalization_1_gamma:@B
4read_11_disablecopyonread_batch_normalization_1_beta:@I
;read_12_disablecopyonread_batch_normalization_1_moving_mean:@M
?read_13_disablecopyonread_batch_normalization_1_moving_variance:@D
)read_14_disablecopyonread_conv2d_2_kernel:@А6
'read_15_disablecopyonread_conv2d_2_bias:	АD
5read_16_disablecopyonread_batch_normalization_2_gamma:	АC
4read_17_disablecopyonread_batch_normalization_2_beta:	АJ
;read_18_disablecopyonread_batch_normalization_2_moving_mean:	АN
?read_19_disablecopyonread_batch_normalization_2_moving_variance:	АE
)read_20_disablecopyonread_conv2d_3_kernel:АА6
'read_21_disablecopyonread_conv2d_3_bias:	АD
5read_22_disablecopyonread_batch_normalization_3_gamma:	АC
4read_23_disablecopyonread_batch_normalization_3_beta:	АJ
;read_24_disablecopyonread_batch_normalization_3_moving_mean:	АN
?read_25_disablecopyonread_batch_normalization_3_moving_variance:	АE
)read_26_disablecopyonread_conv2d_4_kernel:АА6
'read_27_disablecopyonread_conv2d_4_bias:	АD
5read_28_disablecopyonread_batch_normalization_4_gamma:	АC
4read_29_disablecopyonread_batch_normalization_4_beta:	АJ
;read_30_disablecopyonread_batch_normalization_4_moving_mean:	АN
?read_31_disablecopyonread_batch_normalization_4_moving_variance:	АE
)read_32_disablecopyonread_conv2d_5_kernel:АА6
'read_33_disablecopyonread_conv2d_5_bias:	АD
5read_34_disablecopyonread_batch_normalization_5_gamma:	АC
4read_35_disablecopyonread_batch_normalization_5_beta:	АJ
;read_36_disablecopyonread_batch_normalization_5_moving_mean:	АN
?read_37_disablecopyonread_batch_normalization_5_moving_variance:	А:
&read_38_disablecopyonread_dense_kernel:
Аш3
$read_39_disablecopyonread_dense_bias:	шD
5read_40_disablecopyonread_batch_normalization_6_gamma:	шC
4read_41_disablecopyonread_batch_normalization_6_beta:	шJ
;read_42_disablecopyonread_batch_normalization_6_moving_mean:	шN
?read_43_disablecopyonread_batch_normalization_6_moving_variance:	ш<
(read_44_disablecopyonread_dense_1_kernel:
шЇ5
&read_45_disablecopyonread_dense_1_bias:	ЇD
5read_46_disablecopyonread_batch_normalization_7_gamma:	ЇC
4read_47_disablecopyonread_batch_normalization_7_beta:	ЇJ
;read_48_disablecopyonread_batch_normalization_7_moving_mean:	ЇN
?read_49_disablecopyonread_batch_normalization_7_moving_variance:	Ї-
#read_50_disablecopyonread_iteration:	 1
'read_51_disablecopyonread_learning_rate: H
.read_52_disablecopyonread_adam_m_conv2d_kernel:

@H
.read_53_disablecopyonread_adam_v_conv2d_kernel:

@:
,read_54_disablecopyonread_adam_m_conv2d_bias:@:
,read_55_disablecopyonread_adam_v_conv2d_bias:@H
:read_56_disablecopyonread_adam_m_batch_normalization_gamma:@H
:read_57_disablecopyonread_adam_v_batch_normalization_gamma:@G
9read_58_disablecopyonread_adam_m_batch_normalization_beta:@G
9read_59_disablecopyonread_adam_v_batch_normalization_beta:@J
0read_60_disablecopyonread_adam_m_conv2d_1_kernel:

@@J
0read_61_disablecopyonread_adam_v_conv2d_1_kernel:

@@<
.read_62_disablecopyonread_adam_m_conv2d_1_bias:@<
.read_63_disablecopyonread_adam_v_conv2d_1_bias:@J
<read_64_disablecopyonread_adam_m_batch_normalization_1_gamma:@J
<read_65_disablecopyonread_adam_v_batch_normalization_1_gamma:@I
;read_66_disablecopyonread_adam_m_batch_normalization_1_beta:@I
;read_67_disablecopyonread_adam_v_batch_normalization_1_beta:@K
0read_68_disablecopyonread_adam_m_conv2d_2_kernel:@АK
0read_69_disablecopyonread_adam_v_conv2d_2_kernel:@А=
.read_70_disablecopyonread_adam_m_conv2d_2_bias:	А=
.read_71_disablecopyonread_adam_v_conv2d_2_bias:	АK
<read_72_disablecopyonread_adam_m_batch_normalization_2_gamma:	АK
<read_73_disablecopyonread_adam_v_batch_normalization_2_gamma:	АJ
;read_74_disablecopyonread_adam_m_batch_normalization_2_beta:	АJ
;read_75_disablecopyonread_adam_v_batch_normalization_2_beta:	АL
0read_76_disablecopyonread_adam_m_conv2d_3_kernel:ААL
0read_77_disablecopyonread_adam_v_conv2d_3_kernel:АА=
.read_78_disablecopyonread_adam_m_conv2d_3_bias:	А=
.read_79_disablecopyonread_adam_v_conv2d_3_bias:	АK
<read_80_disablecopyonread_adam_m_batch_normalization_3_gamma:	АK
<read_81_disablecopyonread_adam_v_batch_normalization_3_gamma:	АJ
;read_82_disablecopyonread_adam_m_batch_normalization_3_beta:	АJ
;read_83_disablecopyonread_adam_v_batch_normalization_3_beta:	АL
0read_84_disablecopyonread_adam_m_conv2d_4_kernel:ААL
0read_85_disablecopyonread_adam_v_conv2d_4_kernel:АА=
.read_86_disablecopyonread_adam_m_conv2d_4_bias:	А=
.read_87_disablecopyonread_adam_v_conv2d_4_bias:	АK
<read_88_disablecopyonread_adam_m_batch_normalization_4_gamma:	АK
<read_89_disablecopyonread_adam_v_batch_normalization_4_gamma:	АJ
;read_90_disablecopyonread_adam_m_batch_normalization_4_beta:	АJ
;read_91_disablecopyonread_adam_v_batch_normalization_4_beta:	АL
0read_92_disablecopyonread_adam_m_conv2d_5_kernel:ААL
0read_93_disablecopyonread_adam_v_conv2d_5_kernel:АА=
.read_94_disablecopyonread_adam_m_conv2d_5_bias:	А=
.read_95_disablecopyonread_adam_v_conv2d_5_bias:	АK
<read_96_disablecopyonread_adam_m_batch_normalization_5_gamma:	АK
<read_97_disablecopyonread_adam_v_batch_normalization_5_gamma:	АJ
;read_98_disablecopyonread_adam_m_batch_normalization_5_beta:	АJ
;read_99_disablecopyonread_adam_v_batch_normalization_5_beta:	АB
.read_100_disablecopyonread_adam_m_dense_kernel:
АшB
.read_101_disablecopyonread_adam_v_dense_kernel:
Аш;
,read_102_disablecopyonread_adam_m_dense_bias:	ш;
,read_103_disablecopyonread_adam_v_dense_bias:	шL
=read_104_disablecopyonread_adam_m_batch_normalization_6_gamma:	шL
=read_105_disablecopyonread_adam_v_batch_normalization_6_gamma:	шK
<read_106_disablecopyonread_adam_m_batch_normalization_6_beta:	шK
<read_107_disablecopyonread_adam_v_batch_normalization_6_beta:	шD
0read_108_disablecopyonread_adam_m_dense_1_kernel:
шЇD
0read_109_disablecopyonread_adam_v_dense_1_kernel:
шЇ=
.read_110_disablecopyonread_adam_m_dense_1_bias:	Ї=
.read_111_disablecopyonread_adam_v_dense_1_bias:	ЇL
=read_112_disablecopyonread_adam_m_batch_normalization_7_gamma:	ЇL
=read_113_disablecopyonread_adam_v_batch_normalization_7_gamma:	ЇK
<read_114_disablecopyonread_adam_m_batch_normalization_7_beta:	ЇK
<read_115_disablecopyonread_adam_v_batch_normalization_7_beta:	ЇH
6read_116_disablecopyonread_adam_m_siameseoutput_kernel:H
6read_117_disablecopyonread_adam_v_siameseoutput_kernel:B
4read_118_disablecopyonread_adam_m_siameseoutput_bias:B
4read_119_disablecopyonread_adam_v_siameseoutput_bias:,
"read_120_disablecopyonread_total_1: ,
"read_121_disablecopyonread_count_1: *
 read_122_disablecopyonread_total: *
 read_123_disablecopyonread_count: 
savev2_const
identity_249ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_100/DisableCopyOnReadвRead_100/ReadVariableOpвRead_101/DisableCopyOnReadвRead_101/ReadVariableOpвRead_102/DisableCopyOnReadвRead_102/ReadVariableOpвRead_103/DisableCopyOnReadвRead_103/ReadVariableOpвRead_104/DisableCopyOnReadвRead_104/ReadVariableOpвRead_105/DisableCopyOnReadвRead_105/ReadVariableOpвRead_106/DisableCopyOnReadвRead_106/ReadVariableOpвRead_107/DisableCopyOnReadвRead_107/ReadVariableOpвRead_108/DisableCopyOnReadвRead_108/ReadVariableOpвRead_109/DisableCopyOnReadвRead_109/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_110/DisableCopyOnReadвRead_110/ReadVariableOpвRead_111/DisableCopyOnReadвRead_111/ReadVariableOpвRead_112/DisableCopyOnReadвRead_112/ReadVariableOpвRead_113/DisableCopyOnReadвRead_113/ReadVariableOpвRead_114/DisableCopyOnReadвRead_114/ReadVariableOpвRead_115/DisableCopyOnReadвRead_115/ReadVariableOpвRead_116/DisableCopyOnReadвRead_116/ReadVariableOpвRead_117/DisableCopyOnReadвRead_117/ReadVariableOpвRead_118/DisableCopyOnReadвRead_118/ReadVariableOpвRead_119/DisableCopyOnReadвRead_119/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_120/DisableCopyOnReadвRead_120/ReadVariableOpвRead_121/DisableCopyOnReadвRead_121/ReadVariableOpвRead_122/DisableCopyOnReadвRead_122/ReadVariableOpвRead_123/DisableCopyOnReadвRead_123/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_42/DisableCopyOnReadвRead_42/ReadVariableOpвRead_43/DisableCopyOnReadвRead_43/ReadVariableOpвRead_44/DisableCopyOnReadвRead_44/ReadVariableOpвRead_45/DisableCopyOnReadвRead_45/ReadVariableOpвRead_46/DisableCopyOnReadвRead_46/ReadVariableOpвRead_47/DisableCopyOnReadвRead_47/ReadVariableOpвRead_48/DisableCopyOnReadвRead_48/ReadVariableOpвRead_49/DisableCopyOnReadвRead_49/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_50/DisableCopyOnReadвRead_50/ReadVariableOpвRead_51/DisableCopyOnReadвRead_51/ReadVariableOpвRead_52/DisableCopyOnReadвRead_52/ReadVariableOpвRead_53/DisableCopyOnReadвRead_53/ReadVariableOpвRead_54/DisableCopyOnReadвRead_54/ReadVariableOpвRead_55/DisableCopyOnReadвRead_55/ReadVariableOpвRead_56/DisableCopyOnReadвRead_56/ReadVariableOpвRead_57/DisableCopyOnReadвRead_57/ReadVariableOpвRead_58/DisableCopyOnReadвRead_58/ReadVariableOpвRead_59/DisableCopyOnReadвRead_59/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_60/DisableCopyOnReadвRead_60/ReadVariableOpвRead_61/DisableCopyOnReadвRead_61/ReadVariableOpвRead_62/DisableCopyOnReadвRead_62/ReadVariableOpвRead_63/DisableCopyOnReadвRead_63/ReadVariableOpвRead_64/DisableCopyOnReadвRead_64/ReadVariableOpвRead_65/DisableCopyOnReadвRead_65/ReadVariableOpвRead_66/DisableCopyOnReadвRead_66/ReadVariableOpвRead_67/DisableCopyOnReadвRead_67/ReadVariableOpвRead_68/DisableCopyOnReadвRead_68/ReadVariableOpвRead_69/DisableCopyOnReadвRead_69/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_70/DisableCopyOnReadвRead_70/ReadVariableOpвRead_71/DisableCopyOnReadвRead_71/ReadVariableOpвRead_72/DisableCopyOnReadвRead_72/ReadVariableOpвRead_73/DisableCopyOnReadвRead_73/ReadVariableOpвRead_74/DisableCopyOnReadвRead_74/ReadVariableOpвRead_75/DisableCopyOnReadвRead_75/ReadVariableOpвRead_76/DisableCopyOnReadвRead_76/ReadVariableOpвRead_77/DisableCopyOnReadвRead_77/ReadVariableOpвRead_78/DisableCopyOnReadвRead_78/ReadVariableOpвRead_79/DisableCopyOnReadвRead_79/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_80/DisableCopyOnReadвRead_80/ReadVariableOpвRead_81/DisableCopyOnReadвRead_81/ReadVariableOpвRead_82/DisableCopyOnReadвRead_82/ReadVariableOpвRead_83/DisableCopyOnReadвRead_83/ReadVariableOpвRead_84/DisableCopyOnReadвRead_84/ReadVariableOpвRead_85/DisableCopyOnReadвRead_85/ReadVariableOpвRead_86/DisableCopyOnReadвRead_86/ReadVariableOpвRead_87/DisableCopyOnReadвRead_87/ReadVariableOpвRead_88/DisableCopyOnReadвRead_88/ReadVariableOpвRead_89/DisableCopyOnReadвRead_89/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpвRead_90/DisableCopyOnReadвRead_90/ReadVariableOpвRead_91/DisableCopyOnReadвRead_91/ReadVariableOpвRead_92/DisableCopyOnReadвRead_92/ReadVariableOpвRead_93/DisableCopyOnReadвRead_93/ReadVariableOpвRead_94/DisableCopyOnReadвRead_94/ReadVariableOpвRead_95/DisableCopyOnReadвRead_95/ReadVariableOpвRead_96/DisableCopyOnReadвRead_96/ReadVariableOpвRead_97/DisableCopyOnReadвRead_97/ReadVariableOpвRead_98/DisableCopyOnReadвRead_98/ReadVariableOpвRead_99/DisableCopyOnReadвRead_99/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_siameseoutput_kernel"/device:CPU:0*
_output_shapes
 з
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_siameseoutput_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_1/DisableCopyOnReadDisableCopyOnRead+read_1_disablecopyonread_siameseoutput_bias"/device:CPU:0*
_output_shapes
 з
Read_1/ReadVariableOpReadVariableOp+read_1_disablecopyonread_siameseoutput_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_2/DisableCopyOnReadDisableCopyOnRead&read_2_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 о
Read_2/ReadVariableOpReadVariableOp&read_2_disablecopyonread_conv2d_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

@*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

@k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:

@x
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 а
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_conv2d_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_4/DisableCopyOnReadDisableCopyOnRead2read_4_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 о
Read_4/ReadVariableOpReadVariableOp2read_4_disablecopyonread_batch_normalization_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_5/DisableCopyOnReadDisableCopyOnRead1read_5_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 н
Read_5/ReadVariableOpReadVariableOp1read_5_disablecopyonread_batch_normalization_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@М
Read_6/DisableCopyOnReadDisableCopyOnRead8read_6_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 ┤
Read_6/ReadVariableOpReadVariableOp8read_6_disablecopyonread_batch_normalization_moving_mean^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_7/DisableCopyOnReadDisableCopyOnRead<read_7_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 ╕
Read_7/ReadVariableOpReadVariableOp<read_7_disablecopyonread_batch_normalization_moving_variance^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ░
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_conv2d_1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

@@*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

@@m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:

@@z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 в
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_conv2d_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@К
Read_10/DisableCopyOnReadDisableCopyOnRead5read_10_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 │
Read_10/ReadVariableOpReadVariableOp5read_10_disablecopyonread_batch_normalization_1_gamma^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@Й
Read_11/DisableCopyOnReadDisableCopyOnRead4read_11_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ▓
Read_11/ReadVariableOpReadVariableOp4read_11_disablecopyonread_batch_normalization_1_beta^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_12/DisableCopyOnReadDisableCopyOnRead;read_12_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_12/ReadVariableOpReadVariableOp;read_12_disablecopyonread_batch_normalization_1_moving_mean^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ф
Read_13/DisableCopyOnReadDisableCopyOnRead?read_13_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_13/ReadVariableOpReadVariableOp?read_13_disablecopyonread_batch_normalization_1_moving_variance^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_conv2d_2_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*'
_output_shapes
:@А|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ж
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_conv2d_2_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:АК
Read_16/DisableCopyOnReadDisableCopyOnRead5read_16_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ┤
Read_16/ReadVariableOpReadVariableOp5read_16_disablecopyonread_batch_normalization_2_gamma^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЙ
Read_17/DisableCopyOnReadDisableCopyOnRead4read_17_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 │
Read_17/ReadVariableOpReadVariableOp4read_17_disablecopyonread_batch_normalization_2_beta^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_18/DisableCopyOnReadDisableCopyOnRead;read_18_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_18/ReadVariableOpReadVariableOp;read_18_disablecopyonread_batch_normalization_2_moving_mean^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_19/DisableCopyOnReadDisableCopyOnRead?read_19_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_19/ReadVariableOpReadVariableOp?read_19_disablecopyonread_batch_normalization_2_moving_variance^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_20/DisableCopyOnReadDisableCopyOnRead)read_20_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_20/ReadVariableOpReadVariableOp)read_20_disablecopyonread_conv2d_3_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_21/DisableCopyOnReadDisableCopyOnRead'read_21_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 ж
Read_21/ReadVariableOpReadVariableOp'read_21_disablecopyonread_conv2d_3_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:АК
Read_22/DisableCopyOnReadDisableCopyOnRead5read_22_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ┤
Read_22/ReadVariableOpReadVariableOp5read_22_disablecopyonread_batch_normalization_3_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЙ
Read_23/DisableCopyOnReadDisableCopyOnRead4read_23_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 │
Read_23/ReadVariableOpReadVariableOp4read_23_disablecopyonread_batch_normalization_3_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_24/DisableCopyOnReadDisableCopyOnRead;read_24_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_24/ReadVariableOpReadVariableOp;read_24_disablecopyonread_batch_normalization_3_moving_mean^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_25/DisableCopyOnReadDisableCopyOnRead?read_25_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_25/ReadVariableOpReadVariableOp?read_25_disablecopyonread_batch_normalization_3_moving_variance^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_conv2d_4_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 ж
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_conv2d_4_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:АК
Read_28/DisableCopyOnReadDisableCopyOnRead5read_28_disablecopyonread_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ┤
Read_28/ReadVariableOpReadVariableOp5read_28_disablecopyonread_batch_normalization_4_gamma^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЙ
Read_29/DisableCopyOnReadDisableCopyOnRead4read_29_disablecopyonread_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 │
Read_29/ReadVariableOpReadVariableOp4read_29_disablecopyonread_batch_normalization_4_beta^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_30/DisableCopyOnReadDisableCopyOnRead;read_30_disablecopyonread_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_30/ReadVariableOpReadVariableOp;read_30_disablecopyonread_batch_normalization_4_moving_mean^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_31/DisableCopyOnReadDisableCopyOnRead?read_31_disablecopyonread_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_31/ReadVariableOpReadVariableOp?read_31_disablecopyonread_batch_normalization_4_moving_variance^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_32/DisableCopyOnReadDisableCopyOnRead)read_32_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_32/ReadVariableOpReadVariableOp)read_32_disablecopyonread_conv2d_5_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 ж
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_conv2d_5_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:АК
Read_34/DisableCopyOnReadDisableCopyOnRead5read_34_disablecopyonread_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 ┤
Read_34/ReadVariableOpReadVariableOp5read_34_disablecopyonread_batch_normalization_5_gamma^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЙ
Read_35/DisableCopyOnReadDisableCopyOnRead4read_35_disablecopyonread_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 │
Read_35/ReadVariableOpReadVariableOp4read_35_disablecopyonread_batch_normalization_5_beta^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_36/DisableCopyOnReadDisableCopyOnRead;read_36_disablecopyonread_batch_normalization_5_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_36/ReadVariableOpReadVariableOp;read_36_disablecopyonread_batch_normalization_5_moving_mean^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_37/DisableCopyOnReadDisableCopyOnRead?read_37_disablecopyonread_batch_normalization_5_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_37/ReadVariableOpReadVariableOp?read_37_disablecopyonread_batch_normalization_5_moving_variance^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:А{
Read_38/DisableCopyOnReadDisableCopyOnRead&read_38_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 к
Read_38/ReadVariableOpReadVariableOp&read_38_disablecopyonread_dense_kernel^Read_38/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Аш*
dtype0q
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Ашg
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Ашy
Read_39/DisableCopyOnReadDisableCopyOnRead$read_39_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 г
Read_39/ReadVariableOpReadVariableOp$read_39_disablecopyonread_dense_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шb
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:шК
Read_40/DisableCopyOnReadDisableCopyOnRead5read_40_disablecopyonread_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ┤
Read_40/ReadVariableOpReadVariableOp5read_40_disablecopyonread_batch_normalization_6_gamma^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шb
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:шЙ
Read_41/DisableCopyOnReadDisableCopyOnRead4read_41_disablecopyonread_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 │
Read_41/ReadVariableOpReadVariableOp4read_41_disablecopyonread_batch_normalization_6_beta^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шb
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:шР
Read_42/DisableCopyOnReadDisableCopyOnRead;read_42_disablecopyonread_batch_normalization_6_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_42/ReadVariableOpReadVariableOp;read_42_disablecopyonread_batch_normalization_6_moving_mean^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шb
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:шФ
Read_43/DisableCopyOnReadDisableCopyOnRead?read_43_disablecopyonread_batch_normalization_6_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_43/ReadVariableOpReadVariableOp?read_43_disablecopyonread_batch_normalization_6_moving_variance^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шb
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:ш}
Read_44/DisableCopyOnReadDisableCopyOnRead(read_44_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 м
Read_44/ReadVariableOpReadVariableOp(read_44_disablecopyonread_dense_1_kernel^Read_44/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
шЇ*
dtype0q
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
шЇg
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0* 
_output_shapes
:
шЇ{
Read_45/DisableCopyOnReadDisableCopyOnRead&read_45_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 е
Read_45/ReadVariableOpReadVariableOp&read_45_disablecopyonread_dense_1_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їb
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇК
Read_46/DisableCopyOnReadDisableCopyOnRead5read_46_disablecopyonread_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ┤
Read_46/ReadVariableOpReadVariableOp5read_46_disablecopyonread_batch_normalization_7_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їb
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇЙ
Read_47/DisableCopyOnReadDisableCopyOnRead4read_47_disablecopyonread_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 │
Read_47/ReadVariableOpReadVariableOp4read_47_disablecopyonread_batch_normalization_7_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0l
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їb
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇР
Read_48/DisableCopyOnReadDisableCopyOnRead;read_48_disablecopyonread_batch_normalization_7_moving_mean"/device:CPU:0*
_output_shapes
 ║
Read_48/ReadVariableOpReadVariableOp;read_48_disablecopyonread_batch_normalization_7_moving_mean^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0l
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їb
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇФ
Read_49/DisableCopyOnReadDisableCopyOnRead?read_49_disablecopyonread_batch_normalization_7_moving_variance"/device:CPU:0*
_output_shapes
 ╛
Read_49/ReadVariableOpReadVariableOp?read_49_disablecopyonread_batch_normalization_7_moving_variance^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0l
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їb
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes	
:Їx
Read_50/DisableCopyOnReadDisableCopyOnRead#read_50_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_50/ReadVariableOpReadVariableOp#read_50_disablecopyonread_iteration^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	h
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: _
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_51/DisableCopyOnReadDisableCopyOnRead'read_51_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_51/ReadVariableOpReadVariableOp'read_51_disablecopyonread_learning_rate^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_adam_m_conv2d_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

@*
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

@o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
:

@Г
Read_53/DisableCopyOnReadDisableCopyOnRead.read_53_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_53/ReadVariableOpReadVariableOp.read_53_disablecopyonread_adam_v_conv2d_kernel^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

@*
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

@o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
:

@Б
Read_54/DisableCopyOnReadDisableCopyOnRead,read_54_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 к
Read_54/ReadVariableOpReadVariableOp,read_54_disablecopyonread_adam_m_conv2d_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:@Б
Read_55/DisableCopyOnReadDisableCopyOnRead,read_55_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 к
Read_55/ReadVariableOpReadVariableOp,read_55_disablecopyonread_adam_v_conv2d_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_56/DisableCopyOnReadDisableCopyOnRead:read_56_disablecopyonread_adam_m_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 ╕
Read_56/ReadVariableOpReadVariableOp:read_56_disablecopyonread_adam_m_batch_normalization_gamma^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_57/DisableCopyOnReadDisableCopyOnRead:read_57_disablecopyonread_adam_v_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 ╕
Read_57/ReadVariableOpReadVariableOp:read_57_disablecopyonread_adam_v_batch_normalization_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@О
Read_58/DisableCopyOnReadDisableCopyOnRead9read_58_disablecopyonread_adam_m_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ╖
Read_58/ReadVariableOpReadVariableOp9read_58_disablecopyonread_adam_m_batch_normalization_beta^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:@О
Read_59/DisableCopyOnReadDisableCopyOnRead9read_59_disablecopyonread_adam_v_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ╖
Read_59/ReadVariableOpReadVariableOp9read_59_disablecopyonread_adam_v_batch_normalization_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_60/DisableCopyOnReadDisableCopyOnRead0read_60_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ║
Read_60/ReadVariableOpReadVariableOp0read_60_disablecopyonread_adam_m_conv2d_1_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

@@*
dtype0x
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

@@o
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*&
_output_shapes
:

@@Е
Read_61/DisableCopyOnReadDisableCopyOnRead0read_61_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ║
Read_61/ReadVariableOpReadVariableOp0read_61_disablecopyonread_adam_v_conv2d_1_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

@@*
dtype0x
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

@@o
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*&
_output_shapes
:

@@Г
Read_62/DisableCopyOnReadDisableCopyOnRead.read_62_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 м
Read_62/ReadVariableOpReadVariableOp.read_62_disablecopyonread_adam_m_conv2d_1_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:@Г
Read_63/DisableCopyOnReadDisableCopyOnRead.read_63_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 м
Read_63/ReadVariableOpReadVariableOp.read_63_disablecopyonread_adam_v_conv2d_1_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_64/DisableCopyOnReadDisableCopyOnRead<read_64_disablecopyonread_adam_m_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ║
Read_64/ReadVariableOpReadVariableOp<read_64_disablecopyonread_adam_m_batch_normalization_1_gamma^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_65/DisableCopyOnReadDisableCopyOnRead<read_65_disablecopyonread_adam_v_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ║
Read_65/ReadVariableOpReadVariableOp<read_65_disablecopyonread_adam_v_batch_normalization_1_gamma^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_66/DisableCopyOnReadDisableCopyOnRead;read_66_disablecopyonread_adam_m_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ╣
Read_66/ReadVariableOpReadVariableOp;read_66_disablecopyonread_adam_m_batch_normalization_1_beta^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_67/DisableCopyOnReadDisableCopyOnRead;read_67_disablecopyonread_adam_v_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ╣
Read_67/ReadVariableOpReadVariableOp;read_67_disablecopyonread_adam_v_batch_normalization_1_beta^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_68/DisableCopyOnReadDisableCopyOnRead0read_68_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_68/ReadVariableOpReadVariableOp0read_68_disablecopyonread_adam_m_conv2d_2_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0y
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аp
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АЕ
Read_69/DisableCopyOnReadDisableCopyOnRead0read_69_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_69/ReadVariableOpReadVariableOp0read_69_disablecopyonread_adam_v_conv2d_2_kernel^Read_69/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0y
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аp
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АГ
Read_70/DisableCopyOnReadDisableCopyOnRead.read_70_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 н
Read_70/ReadVariableOpReadVariableOp.read_70_disablecopyonread_adam_m_conv2d_2_bias^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_71/DisableCopyOnReadDisableCopyOnRead.read_71_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 н
Read_71/ReadVariableOpReadVariableOp.read_71_disablecopyonread_adam_v_conv2d_2_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_72/DisableCopyOnReadDisableCopyOnRead<read_72_disablecopyonread_adam_m_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_72/ReadVariableOpReadVariableOp<read_72_disablecopyonread_adam_m_batch_normalization_2_gamma^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_73/DisableCopyOnReadDisableCopyOnRead<read_73_disablecopyonread_adam_v_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_73/ReadVariableOpReadVariableOp<read_73_disablecopyonread_adam_v_batch_normalization_2_gamma^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_74/DisableCopyOnReadDisableCopyOnRead;read_74_disablecopyonread_adam_m_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ║
Read_74/ReadVariableOpReadVariableOp;read_74_disablecopyonread_adam_m_batch_normalization_2_beta^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_75/DisableCopyOnReadDisableCopyOnRead;read_75_disablecopyonread_adam_v_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ║
Read_75/ReadVariableOpReadVariableOp;read_75_disablecopyonread_adam_v_batch_normalization_2_beta^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_76/DisableCopyOnReadDisableCopyOnRead0read_76_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_76/ReadVariableOpReadVariableOp0read_76_disablecopyonread_adam_m_conv2d_3_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_77/DisableCopyOnReadDisableCopyOnRead0read_77_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_77/ReadVariableOpReadVariableOp0read_77_disablecopyonread_adam_v_conv2d_3_kernel^Read_77/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_78/DisableCopyOnReadDisableCopyOnRead.read_78_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 н
Read_78/ReadVariableOpReadVariableOp.read_78_disablecopyonread_adam_m_conv2d_3_bias^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_79/DisableCopyOnReadDisableCopyOnRead.read_79_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 н
Read_79/ReadVariableOpReadVariableOp.read_79_disablecopyonread_adam_v_conv2d_3_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_80/DisableCopyOnReadDisableCopyOnRead<read_80_disablecopyonread_adam_m_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_80/ReadVariableOpReadVariableOp<read_80_disablecopyonread_adam_m_batch_normalization_3_gamma^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_81/DisableCopyOnReadDisableCopyOnRead<read_81_disablecopyonread_adam_v_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_81/ReadVariableOpReadVariableOp<read_81_disablecopyonread_adam_v_batch_normalization_3_gamma^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_82/DisableCopyOnReadDisableCopyOnRead;read_82_disablecopyonread_adam_m_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ║
Read_82/ReadVariableOpReadVariableOp;read_82_disablecopyonread_adam_m_batch_normalization_3_beta^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_83/DisableCopyOnReadDisableCopyOnRead;read_83_disablecopyonread_adam_v_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ║
Read_83/ReadVariableOpReadVariableOp;read_83_disablecopyonread_adam_v_batch_normalization_3_beta^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_84/DisableCopyOnReadDisableCopyOnRead0read_84_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_84/ReadVariableOpReadVariableOp0read_84_disablecopyonread_adam_m_conv2d_4_kernel^Read_84/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_85/DisableCopyOnReadDisableCopyOnRead0read_85_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_85/ReadVariableOpReadVariableOp0read_85_disablecopyonread_adam_v_conv2d_4_kernel^Read_85/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_86/DisableCopyOnReadDisableCopyOnRead.read_86_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 н
Read_86/ReadVariableOpReadVariableOp.read_86_disablecopyonread_adam_m_conv2d_4_bias^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_87/DisableCopyOnReadDisableCopyOnRead.read_87_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 н
Read_87/ReadVariableOpReadVariableOp.read_87_disablecopyonread_adam_v_conv2d_4_bias^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_88/DisableCopyOnReadDisableCopyOnRead<read_88_disablecopyonread_adam_m_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_88/ReadVariableOpReadVariableOp<read_88_disablecopyonread_adam_m_batch_normalization_4_gamma^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_89/DisableCopyOnReadDisableCopyOnRead<read_89_disablecopyonread_adam_v_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_89/ReadVariableOpReadVariableOp<read_89_disablecopyonread_adam_v_batch_normalization_4_gamma^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_90/DisableCopyOnReadDisableCopyOnRead;read_90_disablecopyonread_adam_m_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ║
Read_90/ReadVariableOpReadVariableOp;read_90_disablecopyonread_adam_m_batch_normalization_4_beta^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_91/DisableCopyOnReadDisableCopyOnRead;read_91_disablecopyonread_adam_v_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ║
Read_91/ReadVariableOpReadVariableOp;read_91_disablecopyonread_adam_v_batch_normalization_4_beta^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_92/DisableCopyOnReadDisableCopyOnRead0read_92_disablecopyonread_adam_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_92/ReadVariableOpReadVariableOp0read_92_disablecopyonread_adam_m_conv2d_5_kernel^Read_92/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_93/DisableCopyOnReadDisableCopyOnRead0read_93_disablecopyonread_adam_v_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_93/ReadVariableOpReadVariableOp0read_93_disablecopyonread_adam_v_conv2d_5_kernel^Read_93/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_94/DisableCopyOnReadDisableCopyOnRead.read_94_disablecopyonread_adam_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 н
Read_94/ReadVariableOpReadVariableOp.read_94_disablecopyonread_adam_m_conv2d_5_bias^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_95/DisableCopyOnReadDisableCopyOnRead.read_95_disablecopyonread_adam_v_conv2d_5_bias"/device:CPU:0*
_output_shapes
 н
Read_95/ReadVariableOpReadVariableOp.read_95_disablecopyonread_adam_v_conv2d_5_bias^Read_95/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_96/DisableCopyOnReadDisableCopyOnRead<read_96_disablecopyonread_adam_m_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_96/ReadVariableOpReadVariableOp<read_96_disablecopyonread_adam_m_batch_normalization_5_gamma^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes	
:АС
Read_97/DisableCopyOnReadDisableCopyOnRead<read_97_disablecopyonread_adam_v_batch_normalization_5_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_97/ReadVariableOpReadVariableOp<read_97_disablecopyonread_adam_v_batch_normalization_5_gamma^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_98/DisableCopyOnReadDisableCopyOnRead;read_98_disablecopyonread_adam_m_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 ║
Read_98/ReadVariableOpReadVariableOp;read_98_disablecopyonread_adam_m_batch_normalization_5_beta^Read_98/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes	
:АР
Read_99/DisableCopyOnReadDisableCopyOnRead;read_99_disablecopyonread_adam_v_batch_normalization_5_beta"/device:CPU:0*
_output_shapes
 ║
Read_99/ReadVariableOpReadVariableOp;read_99_disablecopyonread_adam_v_batch_normalization_5_beta^Read_99/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_100/DisableCopyOnReadDisableCopyOnRead.read_100_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_100/ReadVariableOpReadVariableOp.read_100_disablecopyonread_adam_m_dense_kernel^Read_100/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Аш*
dtype0s
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Ашi
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АшД
Read_101/DisableCopyOnReadDisableCopyOnRead.read_101_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_101/ReadVariableOpReadVariableOp.read_101_disablecopyonread_adam_v_dense_kernel^Read_101/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Аш*
dtype0s
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Ашi
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АшВ
Read_102/DisableCopyOnReadDisableCopyOnRead,read_102_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 н
Read_102/ReadVariableOpReadVariableOp,read_102_disablecopyonread_adam_m_dense_bias^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0n
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шd
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes	
:шВ
Read_103/DisableCopyOnReadDisableCopyOnRead,read_103_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 н
Read_103/ReadVariableOpReadVariableOp,read_103_disablecopyonread_adam_v_dense_bias^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0n
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шd
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes	
:шУ
Read_104/DisableCopyOnReadDisableCopyOnRead=read_104_disablecopyonread_adam_m_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ╛
Read_104/ReadVariableOpReadVariableOp=read_104_disablecopyonread_adam_m_batch_normalization_6_gamma^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0n
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шd
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes	
:шУ
Read_105/DisableCopyOnReadDisableCopyOnRead=read_105_disablecopyonread_adam_v_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 ╛
Read_105/ReadVariableOpReadVariableOp=read_105_disablecopyonread_adam_v_batch_normalization_6_gamma^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0n
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шd
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes	
:шТ
Read_106/DisableCopyOnReadDisableCopyOnRead<read_106_disablecopyonread_adam_m_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 ╜
Read_106/ReadVariableOpReadVariableOp<read_106_disablecopyonread_adam_m_batch_normalization_6_beta^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0n
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шd
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes	
:шТ
Read_107/DisableCopyOnReadDisableCopyOnRead<read_107_disablecopyonread_adam_v_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 ╜
Read_107/ReadVariableOpReadVariableOp<read_107_disablecopyonread_adam_v_batch_normalization_6_beta^Read_107/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ш*
dtype0n
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:шd
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*
_output_shapes	
:шЖ
Read_108/DisableCopyOnReadDisableCopyOnRead0read_108_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ╢
Read_108/ReadVariableOpReadVariableOp0read_108_disablecopyonread_adam_m_dense_1_kernel^Read_108/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
шЇ*
dtype0s
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
шЇi
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0* 
_output_shapes
:
шЇЖ
Read_109/DisableCopyOnReadDisableCopyOnRead0read_109_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ╢
Read_109/ReadVariableOpReadVariableOp0read_109_disablecopyonread_adam_v_dense_1_kernel^Read_109/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
шЇ*
dtype0s
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
шЇi
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0* 
_output_shapes
:
шЇД
Read_110/DisableCopyOnReadDisableCopyOnRead.read_110_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 п
Read_110/ReadVariableOpReadVariableOp.read_110_disablecopyonread_adam_m_dense_1_bias^Read_110/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0n
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їd
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇД
Read_111/DisableCopyOnReadDisableCopyOnRead.read_111_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 п
Read_111/ReadVariableOpReadVariableOp.read_111_disablecopyonread_adam_v_dense_1_bias^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0n
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їd
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇУ
Read_112/DisableCopyOnReadDisableCopyOnRead=read_112_disablecopyonread_adam_m_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ╛
Read_112/ReadVariableOpReadVariableOp=read_112_disablecopyonread_adam_m_batch_normalization_7_gamma^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0n
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їd
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇУ
Read_113/DisableCopyOnReadDisableCopyOnRead=read_113_disablecopyonread_adam_v_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 ╛
Read_113/ReadVariableOpReadVariableOp=read_113_disablecopyonread_adam_v_batch_normalization_7_gamma^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0n
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їd
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇТ
Read_114/DisableCopyOnReadDisableCopyOnRead<read_114_disablecopyonread_adam_m_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 ╜
Read_114/ReadVariableOpReadVariableOp<read_114_disablecopyonread_adam_m_batch_normalization_7_beta^Read_114/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0n
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їd
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇТ
Read_115/DisableCopyOnReadDisableCopyOnRead<read_115_disablecopyonread_adam_v_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 ╜
Read_115/ReadVariableOpReadVariableOp<read_115_disablecopyonread_adam_v_batch_normalization_7_beta^Read_115/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Ї*
dtype0n
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Їd
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0*
_output_shapes	
:ЇМ
Read_116/DisableCopyOnReadDisableCopyOnRead6read_116_disablecopyonread_adam_m_siameseoutput_kernel"/device:CPU:0*
_output_shapes
 ║
Read_116/ReadVariableOpReadVariableOp6read_116_disablecopyonread_adam_m_siameseoutput_kernel^Read_116/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0q
Identity_232IdentityRead_116/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_233IdentityIdentity_232:output:0"/device:CPU:0*
T0*
_output_shapes

:М
Read_117/DisableCopyOnReadDisableCopyOnRead6read_117_disablecopyonread_adam_v_siameseoutput_kernel"/device:CPU:0*
_output_shapes
 ║
Read_117/ReadVariableOpReadVariableOp6read_117_disablecopyonread_adam_v_siameseoutput_kernel^Read_117/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0q
Identity_234IdentityRead_117/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_235IdentityIdentity_234:output:0"/device:CPU:0*
T0*
_output_shapes

:К
Read_118/DisableCopyOnReadDisableCopyOnRead4read_118_disablecopyonread_adam_m_siameseoutput_bias"/device:CPU:0*
_output_shapes
 ┤
Read_118/ReadVariableOpReadVariableOp4read_118_disablecopyonread_adam_m_siameseoutput_bias^Read_118/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_236IdentityRead_118/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_237IdentityIdentity_236:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_119/DisableCopyOnReadDisableCopyOnRead4read_119_disablecopyonread_adam_v_siameseoutput_bias"/device:CPU:0*
_output_shapes
 ┤
Read_119/ReadVariableOpReadVariableOp4read_119_disablecopyonread_adam_v_siameseoutput_bias^Read_119/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_238IdentityRead_119/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_239IdentityIdentity_238:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_120/DisableCopyOnReadDisableCopyOnRead"read_120_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ю
Read_120/ReadVariableOpReadVariableOp"read_120_disablecopyonread_total_1^Read_120/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_240IdentityRead_120/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_241IdentityIdentity_240:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_121/DisableCopyOnReadDisableCopyOnRead"read_121_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ю
Read_121/ReadVariableOpReadVariableOp"read_121_disablecopyonread_count_1^Read_121/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_242IdentityRead_121/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_243IdentityIdentity_242:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_122/DisableCopyOnReadDisableCopyOnRead read_122_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ь
Read_122/ReadVariableOpReadVariableOp read_122_disablecopyonread_total^Read_122/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_244IdentityRead_122/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_245IdentityIdentity_244:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_123/DisableCopyOnReadDisableCopyOnRead read_123_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ь
Read_123/ReadVariableOpReadVariableOp read_123_disablecopyonread_count^Read_123/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_246IdentityRead_123/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_247IdentityIdentity_246:output:0"/device:CPU:0*
T0*
_output_shapes
: д/
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:}*
dtype0*═.
value├.B└.}B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHъ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:}*
dtype0*П
valueЕBВ}B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ├
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0Identity_233:output:0Identity_235:output:0Identity_237:output:0Identity_239:output:0Identity_241:output:0Identity_243:output:0Identity_245:output:0Identity_247:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *М
dtypesБ
2}	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_248Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_249IdentityIdentity_248:output:0^NoOp*
T0*
_output_shapes
: √3
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_116/DisableCopyOnRead^Read_116/ReadVariableOp^Read_117/DisableCopyOnRead^Read_117/ReadVariableOp^Read_118/DisableCopyOnRead^Read_118/ReadVariableOp^Read_119/DisableCopyOnRead^Read_119/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_120/DisableCopyOnRead^Read_120/ReadVariableOp^Read_121/DisableCopyOnRead^Read_121/ReadVariableOp^Read_122/DisableCopyOnRead^Read_122/ReadVariableOp^Read_123/DisableCopyOnRead^Read_123/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_249Identity_249:output:0*(
_construction_contextkEagerRuntime*С
_input_shapes 
№: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp28
Read_116/DisableCopyOnReadRead_116/DisableCopyOnRead22
Read_116/ReadVariableOpRead_116/ReadVariableOp28
Read_117/DisableCopyOnReadRead_117/DisableCopyOnRead22
Read_117/ReadVariableOpRead_117/ReadVariableOp28
Read_118/DisableCopyOnReadRead_118/DisableCopyOnRead22
Read_118/ReadVariableOpRead_118/ReadVariableOp28
Read_119/DisableCopyOnReadRead_119/DisableCopyOnRead22
Read_119/ReadVariableOpRead_119/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp28
Read_120/DisableCopyOnReadRead_120/DisableCopyOnRead22
Read_120/ReadVariableOpRead_120/ReadVariableOp28
Read_121/DisableCopyOnReadRead_121/DisableCopyOnRead22
Read_121/ReadVariableOpRead_121/ReadVariableOp28
Read_122/DisableCopyOnReadRead_122/DisableCopyOnRead22
Read_122/ReadVariableOpRead_122/ReadVariableOp28
Read_123/DisableCopyOnReadRead_123/DisableCopyOnRead22
Read_123/ReadVariableOpRead_123/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_namesiameseOutput/kernel:2.
,
_user_specified_namesiameseOutput/bias:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:/	+
)
_user_specified_nameconv2d_1/kernel:-
)
'
_user_specified_nameconv2d_1/bias:;7
5
_user_specified_namebatch_normalization_1/gamma::6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:/+
)
_user_specified_nameconv2d_4/kernel:-)
'
_user_specified_nameconv2d_4/bias:;7
5
_user_specified_namebatch_normalization_4/gamma::6
4
_user_specified_namebatch_normalization_4/beta:A=
;
_user_specified_name#!batch_normalization_4/moving_mean:E A
?
_user_specified_name'%batch_normalization_4/moving_variance:/!+
)
_user_specified_nameconv2d_5/kernel:-")
'
_user_specified_nameconv2d_5/bias:;#7
5
_user_specified_namebatch_normalization_5/gamma::$6
4
_user_specified_namebatch_normalization_5/beta:A%=
;
_user_specified_name#!batch_normalization_5/moving_mean:E&A
?
_user_specified_name'%batch_normalization_5/moving_variance:,'(
&
_user_specified_namedense/kernel:*(&
$
_user_specified_name
dense/bias:;)7
5
_user_specified_namebatch_normalization_6/gamma::*6
4
_user_specified_namebatch_normalization_6/beta:A+=
;
_user_specified_name#!batch_normalization_6/moving_mean:E,A
?
_user_specified_name'%batch_normalization_6/moving_variance:.-*
(
_user_specified_namedense_1/kernel:,.(
&
_user_specified_namedense_1/bias:;/7
5
_user_specified_namebatch_normalization_7/gamma::06
4
_user_specified_namebatch_normalization_7/beta:A1=
;
_user_specified_name#!batch_normalization_7/moving_mean:E2A
?
_user_specified_name'%batch_normalization_7/moving_variance:)3%
#
_user_specified_name	iteration:-4)
'
_user_specified_namelearning_rate:450
.
_user_specified_nameAdam/m/conv2d/kernel:460
.
_user_specified_nameAdam/v/conv2d/kernel:27.
,
_user_specified_nameAdam/m/conv2d/bias:28.
,
_user_specified_nameAdam/v/conv2d/bias:@9<
:
_user_specified_name" Adam/m/batch_normalization/gamma:@:<
:
_user_specified_name" Adam/v/batch_normalization/gamma:?;;
9
_user_specified_name!Adam/m/batch_normalization/beta:?<;
9
_user_specified_name!Adam/v/batch_normalization/beta:6=2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6>2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4?0
.
_user_specified_nameAdam/m/conv2d_1/bias:4@0
.
_user_specified_nameAdam/v/conv2d_1/bias:BA>
<
_user_specified_name$"Adam/m/batch_normalization_1/gamma:BB>
<
_user_specified_name$"Adam/v/batch_normalization_1/gamma:AC=
;
_user_specified_name#!Adam/m/batch_normalization_1/beta:AD=
;
_user_specified_name#!Adam/v/batch_normalization_1/beta:6E2
0
_user_specified_nameAdam/m/conv2d_2/kernel:6F2
0
_user_specified_nameAdam/v/conv2d_2/kernel:4G0
.
_user_specified_nameAdam/m/conv2d_2/bias:4H0
.
_user_specified_nameAdam/v/conv2d_2/bias:BI>
<
_user_specified_name$"Adam/m/batch_normalization_2/gamma:BJ>
<
_user_specified_name$"Adam/v/batch_normalization_2/gamma:AK=
;
_user_specified_name#!Adam/m/batch_normalization_2/beta:AL=
;
_user_specified_name#!Adam/v/batch_normalization_2/beta:6M2
0
_user_specified_nameAdam/m/conv2d_3/kernel:6N2
0
_user_specified_nameAdam/v/conv2d_3/kernel:4O0
.
_user_specified_nameAdam/m/conv2d_3/bias:4P0
.
_user_specified_nameAdam/v/conv2d_3/bias:BQ>
<
_user_specified_name$"Adam/m/batch_normalization_3/gamma:BR>
<
_user_specified_name$"Adam/v/batch_normalization_3/gamma:AS=
;
_user_specified_name#!Adam/m/batch_normalization_3/beta:AT=
;
_user_specified_name#!Adam/v/batch_normalization_3/beta:6U2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6V2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4W0
.
_user_specified_nameAdam/m/conv2d_4/bias:4X0
.
_user_specified_nameAdam/v/conv2d_4/bias:BY>
<
_user_specified_name$"Adam/m/batch_normalization_4/gamma:BZ>
<
_user_specified_name$"Adam/v/batch_normalization_4/gamma:A[=
;
_user_specified_name#!Adam/m/batch_normalization_4/beta:A\=
;
_user_specified_name#!Adam/v/batch_normalization_4/beta:6]2
0
_user_specified_nameAdam/m/conv2d_5/kernel:6^2
0
_user_specified_nameAdam/v/conv2d_5/kernel:4_0
.
_user_specified_nameAdam/m/conv2d_5/bias:4`0
.
_user_specified_nameAdam/v/conv2d_5/bias:Ba>
<
_user_specified_name$"Adam/m/batch_normalization_5/gamma:Bb>
<
_user_specified_name$"Adam/v/batch_normalization_5/gamma:Ac=
;
_user_specified_name#!Adam/m/batch_normalization_5/beta:Ad=
;
_user_specified_name#!Adam/v/batch_normalization_5/beta:3e/
-
_user_specified_nameAdam/m/dense/kernel:3f/
-
_user_specified_nameAdam/v/dense/kernel:1g-
+
_user_specified_nameAdam/m/dense/bias:1h-
+
_user_specified_nameAdam/v/dense/bias:Bi>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:Bj>
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:Ak=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:Al=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:5m1
/
_user_specified_nameAdam/m/dense_1/kernel:5n1
/
_user_specified_nameAdam/v/dense_1/kernel:3o/
-
_user_specified_nameAdam/m/dense_1/bias:3p/
-
_user_specified_nameAdam/v/dense_1/bias:Bq>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:Br>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:As=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:At=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:;u7
5
_user_specified_nameAdam/m/siameseOutput/kernel:;v7
5
_user_specified_nameAdam/v/siameseOutput/kernel:9w5
3
_user_specified_nameAdam/m/siameseOutput/bias:9x5
3
_user_specified_nameAdam/v/siameseOutput/bias:'y#
!
_user_specified_name	total_1:'z#
!
_user_specified_name	count_1:%{!

_user_specified_nametotal:%|!

_user_specified_namecount:=}9

_output_shapes
: 

_user_specified_nameConst
╚#
╨
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212016

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╙
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*$
else_branchR
cond_false_211988*
output_shapes
:@*#
then_branchR
cond_true_211987M
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes
:@╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: с
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_212003*
output_shapes
:@*%
then_branchR
cond_1_true_212002Q
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes
:@╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
в
Л
cond_1_false_212003
cond_1_placeholder,
cond_1_readvariableop_resource:@
cond_1_identityИвcond_1/ReadVariableOpp
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes
:@*
dtype0m
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes
:@A
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
 
_
cond_true_208900"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity^
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
В
_
cond_true_212536"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
▐#
╘
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212382

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_212354*
output_shapes	
:А*#
then_branchR
cond_true_212353N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_212369*
output_shapes	
:А*%
then_branchR
cond_1_true_212368R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╘
|
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211205

inputs
inputs_1
identityX
l2_normalize/SquareSquareinputs*
T0*(
_output_shapes
:         Їd
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :а
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+Н
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         f
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:         Ї\
l2_normalize_1/SquareSquareinputs_1*
T0*(
_output_shapes
:         Їf
$l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ж
l2_normalize_1/SumSuml2_normalize_1/Square:y:0-l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(]
l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+У
l2_normalize_1/MaximumMaximuml2_normalize_1/Sum:output:0!l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:         k
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:         l
l2_normalize_1Mulinputs_1l2_normalize_1/Rsqrt:y:0*
T0*(
_output_shapes
:         Їc
MulMull2_normalize:z:0l2_normalize_1:z:0*
T0*(
_output_shapes
:         ЇW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :a
SumSumMul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:         Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         q

ExpandDims
ExpandDimsSum:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:         [
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         Ї:         Ї:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
Ъ

╒
6__inference_batch_normalization_5_layer_call_fn_212695

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_209702К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212685:&"
 
_user_specified_name212687:&"
 
_user_specified_name212689:&"
 
_user_specified_name212691
╒

·
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211731

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╞
]
A__inference_elu_6_layer_call_and_return_conditional_losses_212983

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:         шZ
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
║	
╗
__inference_loss_fn_3_213177V
:conv2d_3_kernel_regularizer_l2loss_readvariableop_resource:АА
identityИв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp╢
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_3_kernel_regularizer_l2loss_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
п	
╒
6__inference_batch_normalization_6_layer_call_fn_212872

inputs
unknown:	ш
	unknown_0:	ш
	unknown_1:	ш
	unknown_2:	ш
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ш*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_209844p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ш<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:&"
 
_user_specified_name212862:&"
 
_user_specified_name212864:&"
 
_user_specified_name212866:&"
 
_user_specified_name212868
з
М
cond_1_false_209666
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
о
K
"__inference__update_step_xla_29821
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ю
m
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_209166

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▒	
╒
6__inference_batch_normalization_7_layer_call_fn_213055

inputs
unknown:	Ї
	unknown_0:	Ї
	unknown_1:	Ї
	unknown_2:	Ї
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_209970p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Ї<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         Ї: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:&"
 
_user_specified_name213045:&"
 
_user_specified_name213047:&"
 
_user_specified_name213049:&"
 
_user_specified_name213051
Ш

╒
6__inference_batch_normalization_3_layer_call_fn_212316

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_209379К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212306:&"
 
_user_specified_name212308:&"
 
_user_specified_name212310:&"
 
_user_specified_name212312
ьD
╓
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212953

inputs6
'assignmovingavg_readvariableop_resource:	ш8
)assignmovingavg_1_readvariableop_resource:	ш+
cast_readvariableop_resource:	ш-
cast_1_readvariableop_resource:	ш
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвCast/ReadVariableOpвCast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ш*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	шИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         шl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ш*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ш*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ш*
squeeze_dims
 I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskK
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: e
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:шv
SelectV2SelectV2Greater:z:0moments/Squeeze:output:0zeros_like:output:0*
T0*
_output_shapes	
:шM
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: g
zeros_like_1/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шW
zeros_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
zeros_like_1Fill%zeros_like_1/shape_as_tensor:output:0zeros_like_1/Const:output:0*
T0*
_output_shapes	
:ш~

SelectV2_1SelectV2Greater_1:z:0moments/Squeeze_1:output:0zeros_like_1:output:0*
T0*
_output_shapes	
:шK
Shape_1Shapeinputs*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ш*
dtype0{
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0SelectV2:output:0*
T0*
_output_shapes	
:шy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ш[
AssignMovingAvg/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Б
AssignMovingAvg/GreaterGreaterstrided_slice_1:output:0"AssignMovingAvg/Greater/y:output:0*
T0*
_output_shapes
: u
*AssignMovingAvg/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шe
 AssignMovingAvg/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
AssignMovingAvg/zeros_likeFill3AssignMovingAvg/zeros_like/shape_as_tensor:output:0)AssignMovingAvg/zeros_like/Const:output:0*
T0*
_output_shapes	
:ше
AssignMovingAvg/SelectV2SelectV2AssignMovingAvg/Greater:z:0AssignMovingAvg/mul:z:0#AssignMovingAvg/zeros_like:output:0*
T0*
_output_shapes	
:ш╢
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resource!AssignMovingAvg/SelectV2:output:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0Б
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0SelectV2_1:output:0*
T0*
_output_shapes	
:ш
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ш]
AssignMovingAvg_1/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Е
AssignMovingAvg_1/GreaterGreaterstrided_slice_1:output:0$AssignMovingAvg_1/Greater/y:output:0*
T0*
_output_shapes
: w
,AssignMovingAvg_1/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:шg
"AssignMovingAvg_1/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
AssignMovingAvg_1/zeros_likeFill5AssignMovingAvg_1/zeros_like/shape_as_tensor:output:0+AssignMovingAvg_1/zeros_like/Const:output:0*
T0*
_output_shapes	
:шн
AssignMovingAvg_1/SelectV2SelectV2AssignMovingAvg_1/Greater:z:0AssignMovingAvg_1/mul:z:0%AssignMovingAvg_1/zeros_like:output:0*
T0*
_output_shapes	
:ш╛
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resource#AssignMovingAvg_1/SelectV2:output:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:ш*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:ш*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:k
batchnorm/addAddV2SelectV2_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:шQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:шn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:шd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         шb
batchnorm/mul_2MulSelectV2:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:шl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:шs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         шc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ш║
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ц)
Й
6__inference_cowMuzzleSiameseModel_layer_call_fn_211449
imageinput1
imageinput2!
unknown:

@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:

@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
Аш

unknown_36:	ш

unknown_37:	ш

unknown_38:	ш

unknown_39:	ш

unknown_40:	ш

unknown_41:
шЇ

unknown_42:	Ї

unknown_43:	Ї

unknown_44:	Ї

unknown_45:	Ї

unknown_46:	Ї

unknown_47:

unknown_48:
identityИвStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallimageinput1imageinput2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./0123*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*│
_input_shapesб
Ю:         рр:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput1:^Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput2:&"
 
_user_specified_name211347:&"
 
_user_specified_name211349:&"
 
_user_specified_name211351:&"
 
_user_specified_name211353:&"
 
_user_specified_name211355:&"
 
_user_specified_name211357:&"
 
_user_specified_name211359:&	"
 
_user_specified_name211361:&
"
 
_user_specified_name211363:&"
 
_user_specified_name211365:&"
 
_user_specified_name211367:&"
 
_user_specified_name211369:&"
 
_user_specified_name211371:&"
 
_user_specified_name211373:&"
 
_user_specified_name211375:&"
 
_user_specified_name211377:&"
 
_user_specified_name211379:&"
 
_user_specified_name211381:&"
 
_user_specified_name211383:&"
 
_user_specified_name211385:&"
 
_user_specified_name211387:&"
 
_user_specified_name211389:&"
 
_user_specified_name211391:&"
 
_user_specified_name211393:&"
 
_user_specified_name211395:&"
 
_user_specified_name211397:&"
 
_user_specified_name211399:&"
 
_user_specified_name211401:&"
 
_user_specified_name211403:&"
 
_user_specified_name211405:& "
 
_user_specified_name211407:&!"
 
_user_specified_name211409:&""
 
_user_specified_name211411:&#"
 
_user_specified_name211413:&$"
 
_user_specified_name211415:&%"
 
_user_specified_name211417:&&"
 
_user_specified_name211419:&'"
 
_user_specified_name211421:&("
 
_user_specified_name211423:&)"
 
_user_specified_name211425:&*"
 
_user_specified_name211427:&+"
 
_user_specified_name211429:&,"
 
_user_specified_name211431:&-"
 
_user_specified_name211433:&."
 
_user_specified_name211435:&/"
 
_user_specified_name211437:&0"
 
_user_specified_name211439:&1"
 
_user_specified_name211441:&2"
 
_user_specified_name211443:&3"
 
_user_specified_name211445
ц
┤
D__inference_conv2d_3_layer_call_and_return_conditional_losses_210120

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ц<
╓
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213115

inputs6
'assignmovingavg_readvariableop_resource:	Ї8
)assignmovingavg_1_readvariableop_resource:	Ї+
cast_readvariableop_resource:	Ї-
cast_1_readvariableop_resource:	Ї
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвCast/ReadVariableOpвCast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	Ї*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ЇИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         Їl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	Ї*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:Ї*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:Ї*
squeeze_dims
 I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskK
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: Y

zeros_likeConst*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    v
SelectV2SelectV2Greater:z:0moments/Squeeze:output:0zeros_like:output:0*
T0*
_output_shapes	
:ЇM
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: [
zeros_like_1Const*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    ~

SelectV2_1SelectV2Greater_1:z:0moments/Squeeze_1:output:0zeros_like_1:output:0*
T0*
_output_shapes	
:ЇK
Shape_1Shapeinputs*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:Ї*
dtype0{
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0SelectV2:output:0*
T0*
_output_shapes	
:Їy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ї[
AssignMovingAvg/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Б
AssignMovingAvg/GreaterGreaterstrided_slice_1:output:0"AssignMovingAvg/Greater/y:output:0*
T0*
_output_shapes
: i
AssignMovingAvg/zeros_likeConst*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    е
AssignMovingAvg/SelectV2SelectV2AssignMovingAvg/Greater:z:0AssignMovingAvg/mul:z:0#AssignMovingAvg/zeros_like:output:0*
T0*
_output_shapes	
:Ї╢
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resource!AssignMovingAvg/SelectV2:output:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0Б
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0SelectV2_1:output:0*
T0*
_output_shapes	
:Ї
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:Ї]
AssignMovingAvg_1/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Е
AssignMovingAvg_1/GreaterGreaterstrided_slice_1:output:0$AssignMovingAvg_1/Greater/y:output:0*
T0*
_output_shapes
: k
AssignMovingAvg_1/zeros_likeConst*
_output_shapes	
:Ї*
dtype0*
valueBЇ*    н
AssignMovingAvg_1/SelectV2SelectV2AssignMovingAvg_1/Greater:z:0AssignMovingAvg_1/mul:z:0%AssignMovingAvg_1/zeros_like:output:0*
T0*
_output_shapes	
:Ї╛
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resource#AssignMovingAvg_1/SelectV2:output:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:Ї*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:Ї*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:k
batchnorm/addAddV2SelectV2_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ЇQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:Їn
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:Їd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Їb
batchnorm/mul_2MulSelectV2:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Їl
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Їs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Їc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         Ї║
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         Ї: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о
K
"__inference__update_step_xla_29831
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╒

·
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211001

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╦
н
B__inference_conv2d_layer_call_and_return_conditional_losses_211754

inputs8
conv2d_readvariableop_resource:

@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@Ц
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         рр@Е
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╘(
ў
$__inference_signature_wrapper_211603
imageinput1
imageinput2!
unknown:

@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:

@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А&

unknown_17:АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А&

unknown_29:АА

unknown_30:	А

unknown_31:	А

unknown_32:	А

unknown_33:	А

unknown_34:	А

unknown_35:
Аш

unknown_36:	ш

unknown_37:	ш

unknown_38:	ш

unknown_39:	ш

unknown_40:	ш

unknown_41:
шЇ

unknown_42:	Ї

unknown_43:	Ї

unknown_44:	Ї

unknown_45:	Ї

unknown_46:	Ї

unknown_47:

unknown_48:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallimageinput1imageinput2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./0123*2
config_proto" 

CPU

GPU2*0,1J 8В **
f%R#
!__inference__wrapped_model_208876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*│
_input_shapesб
Ю:         рр:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput1:^Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput2:&"
 
_user_specified_name211501:&"
 
_user_specified_name211503:&"
 
_user_specified_name211505:&"
 
_user_specified_name211507:&"
 
_user_specified_name211509:&"
 
_user_specified_name211511:&"
 
_user_specified_name211513:&	"
 
_user_specified_name211515:&
"
 
_user_specified_name211517:&"
 
_user_specified_name211519:&"
 
_user_specified_name211521:&"
 
_user_specified_name211523:&"
 
_user_specified_name211525:&"
 
_user_specified_name211527:&"
 
_user_specified_name211529:&"
 
_user_specified_name211531:&"
 
_user_specified_name211533:&"
 
_user_specified_name211535:&"
 
_user_specified_name211537:&"
 
_user_specified_name211539:&"
 
_user_specified_name211541:&"
 
_user_specified_name211543:&"
 
_user_specified_name211545:&"
 
_user_specified_name211547:&"
 
_user_specified_name211549:&"
 
_user_specified_name211551:&"
 
_user_specified_name211553:&"
 
_user_specified_name211555:&"
 
_user_specified_name211557:&"
 
_user_specified_name211559:& "
 
_user_specified_name211561:&!"
 
_user_specified_name211563:&""
 
_user_specified_name211565:&#"
 
_user_specified_name211567:&$"
 
_user_specified_name211569:&%"
 
_user_specified_name211571:&&"
 
_user_specified_name211573:&'"
 
_user_specified_name211575:&("
 
_user_specified_name211577:&)"
 
_user_specified_name211579:&*"
 
_user_specified_name211581:&+"
 
_user_specified_name211583:&,"
 
_user_specified_name211585:&-"
 
_user_specified_name211587:&."
 
_user_specified_name211589:&/"
 
_user_specified_name211591:&0"
 
_user_specified_name211593:&1"
 
_user_specified_name211595:&2"
 
_user_specified_name211597:&3"
 
_user_specified_name211599
┌
a
C__inference_dropout_layer_call_and_return_conditional_losses_210445

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ш\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ш"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
ю
m
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212280

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Р
l
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211909

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
_
cond_true_209650"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
В
_
cond_true_212719"
cond_identity_fusedbatchnormv3
cond_placeholder
cond_identity_
cond/IdentityIdentitycond_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
з
М
cond_1_false_209366
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
▐#
╘
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212199

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╒
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*$
else_branchR
cond_false_212171*
output_shapes	
:А*#
then_branchR
cond_true_212170N
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes	
:А╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: у
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes	
:А*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_212186*
output_shapes	
:А*%
then_branchR
cond_1_true_212185R
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes	
:А╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┌
a
C__inference_dropout_layer_call_and_return_conditional_losses_213010

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ш\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ш"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
а
а
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212222

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╟
c
7__inference_cosineSimilarityMetric_layer_call_fn_211663
inputs_0
inputs_1
identity╧
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211205`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         Ї:         Ї:R N
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_1
Т
g
cond_1_true_212368$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
Ш

╒
6__inference_batch_normalization_4_layer_call_fn_212499

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_209529К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:&"
 
_user_specified_name212489:&"
 
_user_specified_name212491:&"
 
_user_specified_name212493:&"
 
_user_specified_name212495
У
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_212425

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
з
М
cond_1_false_209216
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
є
m
4__inference_spatial_dropout2d_5_layer_call_fn_212796

inputs
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_209761Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
я
k
2__inference_spatial_dropout2d_layer_call_fn_211881

inputs
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *V
fQRO
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_209011Т
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4                                    <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
m
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212097

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П
g
cond_1_true_209065$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityb
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes
:@"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: :L H

_output_shapes
:@
*
_user_specified_nameFusedBatchNormV3
М

╧
4__inference_batch_normalization_layer_call_fn_211767

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_208929Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:&"
 
_user_specified_name211757:&"
 
_user_specified_name211759:&"
 
_user_specified_name211761:&"
 
_user_specified_name211763
т
]
A__inference_elu_1_layer_call_and_return_conditional_losses_210067

inputs
identityL
EluEluinputs*
T0*/
_output_shapes
:         pp@a
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:         pp@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         pp@:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
ц
┤
D__inference_conv2d_3_layer_call_and_return_conditional_losses_212303

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
└
B
&__inference_elu_4_layer_call_fn_212593

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *J
fERC
A__inference_elu_4_layer_call_and_return_conditional_losses_210175i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
з
М
cond_1_false_209516
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
о
K
"__inference__update_step_xla_29841
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
С
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_208983

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╜
L
0__inference_max_pooling2d_2_layer_call_fn_212237

inputs
identity▐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_209283Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
n
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_209161

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
в
Л
cond_1_false_211820
cond_1_placeholder,
cond_1_readvariableop_resource:@
cond_1_identityИвcond_1/ReadVariableOpp
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes
:@*
dtype0m
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes
:@A
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:@: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:  

_output_shapes
:@:($
"
_user_specified_name
resource
╞
]
A__inference_elu_6_layer_call_and_return_conditional_losses_210250

inputs
identityE
EluEluinputs*
T0*(
_output_shapes
:         шZ
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ш:P L
(
_output_shapes
:         ш
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29851
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
∙h
Й
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211032
imageinput1
imageinput2-
imageencoder_210820:

@!
imageencoder_210822:@!
imageencoder_210824:@!
imageencoder_210826:@!
imageencoder_210828:@!
imageencoder_210830:@-
imageencoder_210832:

@@!
imageencoder_210834:@!
imageencoder_210836:@!
imageencoder_210838:@!
imageencoder_210840:@!
imageencoder_210842:@.
imageencoder_210844:@А"
imageencoder_210846:	А"
imageencoder_210848:	А"
imageencoder_210850:	А"
imageencoder_210852:	А"
imageencoder_210854:	А/
imageencoder_210856:АА"
imageencoder_210858:	А"
imageencoder_210860:	А"
imageencoder_210862:	А"
imageencoder_210864:	А"
imageencoder_210866:	А/
imageencoder_210868:АА"
imageencoder_210870:	А"
imageencoder_210872:	А"
imageencoder_210874:	А"
imageencoder_210876:	А"
imageencoder_210878:	А/
imageencoder_210880:АА"
imageencoder_210882:	А"
imageencoder_210884:	А"
imageencoder_210886:	А"
imageencoder_210888:	А"
imageencoder_210890:	А'
imageencoder_210892:
Аш"
imageencoder_210894:	ш"
imageencoder_210896:	ш"
imageencoder_210898:	ш"
imageencoder_210900:	ш"
imageencoder_210902:	ш'
imageencoder_210904:
шЇ"
imageencoder_210906:	Ї"
imageencoder_210908:	Ї"
imageencoder_210910:	Ї"
imageencoder_210912:	Ї"
imageencoder_210914:	Ї&
siameseoutput_211002:"
siameseoutput_211004:
identityИв/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpв$imageEncoder/StatefulPartitionedCallв&imageEncoder/StatefulPartitionedCall_1в%siameseOutput/StatefulPartitionedCallЭ
$imageEncoder/StatefulPartitionedCallStatefulPartitionedCallimageinput1imageencoder_210820imageencoder_210822imageencoder_210824imageencoder_210826imageencoder_210828imageencoder_210830imageencoder_210832imageencoder_210834imageencoder_210836imageencoder_210838imageencoder_210840imageencoder_210842imageencoder_210844imageencoder_210846imageencoder_210848imageencoder_210850imageencoder_210852imageencoder_210854imageencoder_210856imageencoder_210858imageencoder_210860imageencoder_210862imageencoder_210864imageencoder_210866imageencoder_210868imageencoder_210870imageencoder_210872imageencoder_210874imageencoder_210876imageencoder_210878imageencoder_210880imageencoder_210882imageencoder_210884imageencoder_210886imageencoder_210888imageencoder_210890imageencoder_210892imageencoder_210894imageencoder_210896imageencoder_210898imageencoder_210900imageencoder_210902imageencoder_210904imageencoder_210906imageencoder_210908imageencoder_210910imageencoder_210912imageencoder_210914*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*B
_read_only_resource_inputs$
" 	
 !"%&)*+,/0*2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320╞
&imageEncoder/StatefulPartitionedCall_1StatefulPartitionedCallimageinput2imageencoder_210820imageencoder_210822imageencoder_210824imageencoder_210826imageencoder_210828imageencoder_210830imageencoder_210832imageencoder_210834imageencoder_210836imageencoder_210838imageencoder_210840imageencoder_210842imageencoder_210844imageencoder_210846imageencoder_210848imageencoder_210850imageencoder_210852imageencoder_210854imageencoder_210856imageencoder_210858imageencoder_210860imageencoder_210862imageencoder_210864imageencoder_210866imageencoder_210868imageencoder_210870imageencoder_210872imageencoder_210874imageencoder_210876imageencoder_210878imageencoder_210880imageencoder_210882imageencoder_210884imageencoder_210886imageencoder_210888imageencoder_210890imageencoder_210892imageencoder_210894imageencoder_210896imageencoder_210898imageencoder_210900imageencoder_210902imageencoder_210904imageencoder_210906imageencoder_210908imageencoder_210910imageencoder_210912imageencoder_210914%^imageEncoder/StatefulPartitionedCall*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Ї*B
_read_only_resource_inputs$
" 	
 !"%&)*+,/0*2
config_proto" 

CPU

GPU2*0,1J 8В *Q
fLRJ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320▓
&cosineSimilarityMetric/PartitionedCallPartitionedCall-imageEncoder/StatefulPartitionedCall:output:0/imageEncoder/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *[
fVRT
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_210989▓
%siameseOutput/StatefulPartitionedCallStatefulPartitionedCall/cosineSimilarityMetric/PartitionedCall:output:0siameseoutput_211002siameseoutput_211004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211001Л
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_210820*&
_output_shapes
:

@*
dtype0Д
 conv2d/kernel/Regularizer/L2LossL2Loss7conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9Ъ
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0)conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Н
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_210832*&
_output_shapes
:

@@*
dtype0И
"conv2d_1/kernel/Regularizer/L2LossL2Loss9conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_1/kernel/Regularizer/mulMul*conv2d_1/kernel/Regularizer/mul/x:output:0+conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: О
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_210844*'
_output_shapes
:@А*
dtype0И
"conv2d_2/kernel/Regularizer/L2LossL2Loss9conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_2/kernel/Regularizer/mulMul*conv2d_2/kernel/Regularizer/mul/x:output:0+conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: П
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_210856*(
_output_shapes
:АА*
dtype0И
"conv2d_3/kernel/Regularizer/L2LossL2Loss9conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0+conv2d_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: П
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_210868*(
_output_shapes
:АА*
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: П
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpimageencoder_210880*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: }
IdentityIdentity.siameseOutput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp0^conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp%^imageEncoder/StatefulPartitionedCall'^imageEncoder/StatefulPartitionedCall_1&^siameseOutput/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*│
_input_shapesб
Ю:         рр:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_3/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2L
$imageEncoder/StatefulPartitionedCall$imageEncoder/StatefulPartitionedCall2P
&imageEncoder/StatefulPartitionedCall_1&imageEncoder/StatefulPartitionedCall_12N
%siameseOutput/StatefulPartitionedCall%siameseOutput/StatefulPartitionedCall:^ Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput1:^Z
1
_output_shapes
:         рр
%
_user_specified_nameimageInput2:&"
 
_user_specified_name210820:&"
 
_user_specified_name210822:&"
 
_user_specified_name210824:&"
 
_user_specified_name210826:&"
 
_user_specified_name210828:&"
 
_user_specified_name210830:&"
 
_user_specified_name210832:&	"
 
_user_specified_name210834:&
"
 
_user_specified_name210836:&"
 
_user_specified_name210838:&"
 
_user_specified_name210840:&"
 
_user_specified_name210842:&"
 
_user_specified_name210844:&"
 
_user_specified_name210846:&"
 
_user_specified_name210848:&"
 
_user_specified_name210850:&"
 
_user_specified_name210852:&"
 
_user_specified_name210854:&"
 
_user_specified_name210856:&"
 
_user_specified_name210858:&"
 
_user_specified_name210860:&"
 
_user_specified_name210862:&"
 
_user_specified_name210864:&"
 
_user_specified_name210866:&"
 
_user_specified_name210868:&"
 
_user_specified_name210870:&"
 
_user_specified_name210872:&"
 
_user_specified_name210874:&"
 
_user_specified_name210876:&"
 
_user_specified_name210878:& "
 
_user_specified_name210880:&!"
 
_user_specified_name210882:&""
 
_user_specified_name210884:&#"
 
_user_specified_name210886:&$"
 
_user_specified_name210888:&%"
 
_user_specified_name210890:&&"
 
_user_specified_name210892:&'"
 
_user_specified_name210894:&("
 
_user_specified_name210896:&)"
 
_user_specified_name210898:&*"
 
_user_specified_name210900:&+"
 
_user_specified_name210902:&,"
 
_user_specified_name210904:&-"
 
_user_specified_name210906:&."
 
_user_specified_name210908:&/"
 
_user_specified_name210910:&0"
 
_user_specified_name210912:&1"
 
_user_specified_name210914:&2"
 
_user_specified_name211002:&3"
 
_user_specified_name211004
ю
m
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_209316

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ю
m
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212463

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_29891
gradient
variable:	Ї*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:Ї: *
	_noinline(:E A

_output_shapes	
:Ї
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ц
┤
D__inference_conv2d_5_layer_call_and_return_conditional_losses_212669

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖Q9а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
n
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212824

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╘
|
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_210989

inputs
inputs_1
identityX
l2_normalize/SquareSquareinputs*
T0*(
_output_shapes
:         Їd
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :а
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+Н
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         f
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:         Ї\
l2_normalize_1/SquareSquareinputs_1*
T0*(
_output_shapes
:         Їf
$l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ж
l2_normalize_1/SumSuml2_normalize_1/Square:y:0-l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(]
l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+У
l2_normalize_1/MaximumMaximuml2_normalize_1/Sum:output:0!l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:         k
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:         l
l2_normalize_1Mulinputs_1l2_normalize_1/Rsqrt:y:0*
T0*(
_output_shapes
:         Їc
MulMull2_normalize:z:0l2_normalize_1:z:0*
T0*(
_output_shapes
:         ЇW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :a
SumSumMul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:         Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         q

ExpandDims
ExpandDimsSum:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:         [
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         Ї:         Ї:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
З
В
cond_false_209651
cond_placeholder+
cond_readvariableop_resource:	А
cond_identityИвcond/ReadVariableOpm
cond/ReadVariableOpReadVariableOpcond_readvariableop_resource*
_output_shapes	
:А*
dtype0h
cond/IdentityIdentitycond/ReadVariableOp:value:0
^cond/NoOp*
T0*
_output_shapes	
:А=
	cond/NoOpNoOp^cond/ReadVariableOp*
_output_shapes
 "'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2*
cond/ReadVariableOpcond/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
Т
g
cond_1_true_209515$
 cond_1_identity_fusedbatchnormv3
cond_1_placeholder
cond_1_identityc
cond_1/IdentityIdentity cond_1_identity_fusedbatchnormv3*
T0*
_output_shapes	
:А"+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: :M I

_output_shapes	
:А
*
_user_specified_nameFusedBatchNormV3
▐
~
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211711
inputs_0
inputs_1
identityZ
l2_normalize/SquareSquareinputs_0*
T0*(
_output_shapes
:         Їd
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :а
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+Н
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:         g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:         h
l2_normalizeMulinputs_0l2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:         Ї\
l2_normalize_1/SquareSquareinputs_1*
T0*(
_output_shapes
:         Їf
$l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ж
l2_normalize_1/SumSuml2_normalize_1/Square:y:0-l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(]
l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *╠╝М+У
l2_normalize_1/MaximumMaximuml2_normalize_1/Sum:output:0!l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:         k
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:         l
l2_normalize_1Mulinputs_1l2_normalize_1/Rsqrt:y:0*
T0*(
_output_shapes
:         Їc
MulMull2_normalize:z:0l2_normalize_1:z:0*
T0*(
_output_shapes
:         ЇW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :a
SumSumMul:z:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:         Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         q

ExpandDims
ExpandDimsSum:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:         [
IdentityIdentityExpandDims:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         Ї:         Ї:R N
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         Ї
"
_user_specified_name
inputs_1
ю
m
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_209766

inputs

identity_1q
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4                                    ~

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4                                    "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
з
М
cond_1_false_212735
cond_1_placeholder-
cond_1_readvariableop_resource:	А
cond_1_identityИвcond_1/ReadVariableOpq
cond_1/ReadVariableOpReadVariableOpcond_1_readvariableop_resource*
_output_shapes	
:А*
dtype0n
cond_1/IdentityIdentitycond_1/ReadVariableOp:value:0^cond_1/NoOp*
T0*
_output_shapes	
:АA
cond_1/NoOpNoOp^cond_1/ReadVariableOp*
_output_shapes
 "+
cond_1_identitycond_1/Identity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: 2.
cond_1/ReadVariableOpcond_1/ReadVariableOp:! 

_output_shapes	
:А:($
"
_user_specified_name
resource
Т
n
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212092

inputs
identityИI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?З
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4                                    `
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :╓
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:м
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"                  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╖
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"                  T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╢
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*J
_output_shapes8
6:4                                    Д
IdentityIdentitydropout/SelectV2:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╚#
╨
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_209079

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1вcondвcond_1I
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<K
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B : _
GreaterGreaterstrided_slice:output:0Greater/y:output:0*
T0*
_output_shapes
: ╙
condIfGreater:z:0FusedBatchNormV3:batch_mean:0(fusedbatchnormv3_readvariableop_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*$
else_branchR
cond_false_209051*
output_shapes
:@*#
then_branchR
cond_true_209050M
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes
:@╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourcecond/Identity:output:0 ^FusedBatchNormV3/ReadVariableOp^cond*
_output_shapes
 *
dtype0*
validate_shape(M
Greater_1/yConst*
_output_shapes
: *
dtype0*
value	B : c
	Greater_1Greaterstrided_slice:output:0Greater_1/y:output:0*
T0*
_output_shapes
: с
cond_1IfGreater_1:z:0!FusedBatchNormV3:batch_variance:0*fusedbatchnormv3_readvariableop_1_resource*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:@*#
_read_only_resource_inputs
*&
else_branchR
cond_1_false_209066*
output_shapes
:@*%
then_branchR
cond_1_true_209065Q
cond_1/IdentityIdentitycond_1:output:0*
T0*
_output_shapes
:@╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resourcecond_1/Identity:output:0"^FusedBatchNormV3/ReadVariableOp_1^cond_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @└
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1^cond^cond_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12
condcond2
cond_1cond_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*С
serving_default¤
M
imageInput1>
serving_default_imageInput1:0         рр
M
imageInput2>
serving_default_imageInput2:0         ррA
siameseOutput0
StatefulPartitionedCall:0         tensorflow/serving/predict:жю
╪
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
┌
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
 layer-17
!layer-18
"layer-19
#layer_with_weights-8
#layer-20
$layer_with_weights-9
$layer-21
%layer-22
&layer-23
'layer-24
(layer_with_weights-10
(layer-25
)layer_with_weights-11
)layer-26
*layer-27
+layer-28
,layer-29
-layer-30
.layer_with_weights-12
.layer-31
/layer_with_weights-13
/layer-32
0layer-33
1layer-34
2layer_with_weights-14
2layer-35
3layer_with_weights-15
3layer-36
4layer-37
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_sequential
е
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
ж
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
[18
\19
]20
^21
_22
`23
a24
b25
c26
d27
e28
f29
g30
h31
i32
j33
k34
l35
m36
n37
o38
p39
q40
r41
s42
t43
u44
v45
w46
x47
G48
H49"
trackable_list_wrapper
ж
I0
J1
K2
L3
O4
P5
Q6
R7
U8
V9
W10
X11
[12
\13
]14
^15
a16
b17
c18
d19
g20
h21
i22
j23
m24
n25
o26
p27
s28
t29
u30
v31
G32
H33"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▀
~trace_0
trace_12и
6__inference_cowMuzzleSiameseModel_layer_call_fn_211343
6__inference_cowMuzzleSiameseModel_layer_call_fn_211449╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z~trace_0ztrace_1
Щ
Аtrace_0
Бtrace_12▐
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211032
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211237╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0zБtrace_1
▌B┌
!__inference__wrapped_model_208876imageInput1imageInput2"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
В
_variables
Г_iterations
Д_learning_rate
Е_index_dict
Ж
_momentums
З_velocities
И_update_step_xla"
experimentalOptimizer
-
Йserving_default"
signature_map
ф
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses

Ikernel
Jbias
!Р_jit_compiled_convolution_op"
_tf_keras_layer
ё
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses
	Чaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
л
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ю	variables
Яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses"
_tf_keras_layer
├
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
к_random_generator"
_tf_keras_layer
ф
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses

Okernel
Pbias
!▒_jit_compiled_convolution_op"
_tf_keras_layer
ё
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
	╕axis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance"
_tf_keras_layer
л
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses"
_tf_keras_layer
л
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses"
_tf_keras_layer
├
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses
╦_random_generator"
_tf_keras_layer
ф
╠	variables
═trainable_variables
╬regularization_losses
╧	keras_api
╨__call__
+╤&call_and_return_all_conditional_losses

Ukernel
Vbias
!╥_jit_compiled_convolution_op"
_tf_keras_layer
ё
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses
	┘axis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance"
_tf_keras_layer
л
┌	variables
█trainable_variables
▄regularization_losses
▌	keras_api
▐__call__
+▀&call_and_return_all_conditional_losses"
_tf_keras_layer
л
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"
_tf_keras_layer
├
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses
ь_random_generator"
_tf_keras_layer
ф
э	variables
юtrainable_variables
яregularization_losses
Ё	keras_api
ё__call__
+Є&call_and_return_all_conditional_losses

[kernel
\bias
!є_jit_compiled_convolution_op"
_tf_keras_layer
ё
Ї	variables
їtrainable_variables
Ўregularization_losses
ў	keras_api
°__call__
+∙&call_and_return_all_conditional_losses
	·axis
	]gamma
^beta
_moving_mean
`moving_variance"
_tf_keras_layer
л
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
├
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses
Н_random_generator"
_tf_keras_layer
ф
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses

akernel
bbias
!Ф_jit_compiled_convolution_op"
_tf_keras_layer
ё
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses
	Ыaxis
	cgamma
dbeta
emoving_mean
fmoving_variance"
_tf_keras_layer
л
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses"
_tf_keras_layer
л
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
├
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses
о_random_generator"
_tf_keras_layer
ф
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses

gkernel
hbias
!╡_jit_compiled_convolution_op"
_tf_keras_layer
ё
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses
	╝axis
	igamma
jbeta
kmoving_mean
lmoving_variance"
_tf_keras_layer
л
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"
_tf_keras_layer
л
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"
_tf_keras_layer
├
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
╧_random_generator"
_tf_keras_layer
л
╨	variables
╤trainable_variables
╥regularization_losses
╙	keras_api
╘__call__
+╒&call_and_return_all_conditional_losses"
_tf_keras_layer
┴
╓	variables
╫trainable_variables
╪regularization_losses
┘	keras_api
┌__call__
+█&call_and_return_all_conditional_losses

mkernel
nbias"
_tf_keras_layer
ё
▄	variables
▌trainable_variables
▐regularization_losses
▀	keras_api
р__call__
+с&call_and_return_all_conditional_losses
	тaxis
	ogamma
pbeta
qmoving_mean
rmoving_variance"
_tf_keras_layer
л
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
├
щ	variables
ъtrainable_variables
ыregularization_losses
ь	keras_api
э__call__
+ю&call_and_return_all_conditional_losses
я_random_generator"
_tf_keras_layer
┴
Ё	variables
ёtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses

skernel
tbias"
_tf_keras_layer
ё
Ў	variables
ўtrainable_variables
°regularization_losses
∙	keras_api
·__call__
+√&call_and_return_all_conditional_losses
	№axis
	ugamma
vbeta
wmoving_mean
xmoving_variance"
_tf_keras_layer
л
¤	variables
■trainable_variables
 regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
I0
J1
K2
L3
M4
N5
O6
P7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17
[18
\19
]20
^21
_22
`23
a24
b25
c26
d27
e28
f29
g30
h31
i32
j33
k34
l35
m36
n37
o38
p39
q40
r41
s42
t43
u44
v45
w46
x47"
trackable_list_wrapper
Ц
I0
J1
K2
L3
O4
P5
Q6
R7
U8
V9
W10
X11
[12
\13
]14
^15
a16
b17
c18
d19
g20
h21
i22
j23
m24
n25
o26
p27
s28
t29
u30
v31"
trackable_list_wrapper
P
Г0
Д1
Е2
Ж3
З4
И5"
trackable_list_wrapper
▓
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
╤
Оtrace_0
Пtrace_12Ц
-__inference_imageEncoder_layer_call_fn_210588
-__inference_imageEncoder_layer_call_fn_210689╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0zПtrace_1
З
Рtrace_0
Сtrace_12╠
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0zСtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
х
Чtrace_0
Шtrace_12к
7__inference_cosineSimilarityMetric_layer_call_fn_211657
7__inference_cosineSimilarityMetric_layer_call_fn_211663╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0zШtrace_1
Ы
Щtrace_0
Ъtrace_12р
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211687
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211711╡
о▓к
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsв

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0zЪtrace_1
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ъ
аtrace_02╦
.__inference_siameseOutput_layer_call_fn_211720Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
Е
бtrace_02ц
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211731Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
(:& 2siameseOutput/kernel
":  2siameseOutput/bias
):'

@ 2conv2d/kernel
:@ 2conv2d/bias
):'@ 2batch_normalization/gamma
(:&@ 2batch_normalization/beta
/:-@ (2batch_normalization/moving_mean
3:1@ (2#batch_normalization/moving_variance
+:)

@@ 2conv2d_1/kernel
:@ 2conv2d_1/bias
+:)@ 2batch_normalization_1/gamma
*:(@ 2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
,:*@А 2conv2d_2/kernel
:А 2conv2d_2/bias
,:*А 2batch_normalization_2/gamma
+:)А 2batch_normalization_2/beta
2:0А (2!batch_normalization_2/moving_mean
6:4А (2%batch_normalization_2/moving_variance
-:+АА 2conv2d_3/kernel
:А 2conv2d_3/bias
,:*А 2batch_normalization_3/gamma
+:)А 2batch_normalization_3/beta
2:0А (2!batch_normalization_3/moving_mean
6:4А (2%batch_normalization_3/moving_variance
-:+АА 2conv2d_4/kernel
:А 2conv2d_4/bias
,:*А 2batch_normalization_4/gamma
+:)А 2batch_normalization_4/beta
2:0А (2!batch_normalization_4/moving_mean
6:4А (2%batch_normalization_4/moving_variance
-:+АА 2conv2d_5/kernel
:А 2conv2d_5/bias
,:*А 2batch_normalization_5/gamma
+:)А 2batch_normalization_5/beta
2:0А (2!batch_normalization_5/moving_mean
6:4А (2%batch_normalization_5/moving_variance
": 
Аш 2dense/kernel
:ш 2
dense/bias
,:*ш 2batch_normalization_6/gamma
+:)ш 2batch_normalization_6/beta
2:0ш (2!batch_normalization_6/moving_mean
6:4ш (2%batch_normalization_6/moving_variance
$:"
шЇ 2dense_1/kernel
:Ї 2dense_1/bias
,:*Ї 2batch_normalization_7/gamma
+:)Ї 2batch_normalization_7/beta
2:0Ї (2!batch_normalization_7/moving_mean
6:4Ї (2%batch_normalization_7/moving_variance
Ц
M0
N1
S2
T3
Y4
Z5
_6
`7
e8
f9
k10
l11
q12
r13
w14
x15"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
в0
г1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
6__inference_cowMuzzleSiameseModel_layer_call_fn_211343imageInput1imageInput2"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЖBГ
6__inference_cowMuzzleSiameseModel_layer_call_fn_211449imageInput1imageInput2"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
бBЮ
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211032imageInput1imageInput2"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
бBЮ
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211237imageInput1imageInput2"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Г
Г0
д1
е2
ж3
з4
и5
й6
к7
л8
м9
н10
о11
п12
░13
▒14
▓15
│16
┤17
╡18
╢19
╖20
╕21
╣22
║23
╗24
╝25
╜26
╛27
┐28
└29
┴30
┬31
├32
─33
┼34
╞35
╟36
╚37
╔38
╩39
╦40
╠41
═42
╬43
╧44
╨45
╤46
╥47
╙48
╘49
╒50
╓51
╫52
╪53
┘54
┌55
█56
▄57
▌58
▐59
▀60
р61
с62
т63
у64
ф65
х66
ц67
ч68"
trackable_list_wrapper
:	  2	iteration
:  2learning_rate
 "
trackable_dict_wrapper
╚
д0
ж1
и2
к3
м4
о5
░6
▓7
┤8
╢9
╕10
║11
╝12
╛13
└14
┬15
─16
╞17
╚18
╩19
╠20
╬21
╨22
╥23
╘24
╓25
╪26
┌27
▄28
▐29
р30
т31
ф32
ц33"
trackable_list_wrapper
╚
е0
з1
й2
л3
н4
п5
▒6
│7
╡8
╖9
╣10
╗11
╜12
┐13
┴14
├15
┼16
╟17
╔18
╦19
═20
╧21
╤22
╙23
╒24
╫25
┘26
█27
▌28
▀29
с30
у31
х32
ч33"
trackable_list_wrapper
х
шtrace_0
щtrace_1
ъtrace_2
ыtrace_3
ьtrace_4
эtrace_5
юtrace_6
яtrace_7
Ёtrace_8
ёtrace_9
Єtrace_10
єtrace_11
Їtrace_12
їtrace_13
Ўtrace_14
ўtrace_15
°trace_16
∙trace_17
·trace_18
√trace_19
№trace_20
¤trace_21
■trace_22
 trace_23
Аtrace_24
Бtrace_25
Вtrace_26
Гtrace_27
Дtrace_28
Еtrace_29
Жtrace_30
Зtrace_31
Иtrace_32
Йtrace_332·

"__inference__update_step_xla_29746
"__inference__update_step_xla_29751
"__inference__update_step_xla_29756
"__inference__update_step_xla_29761
"__inference__update_step_xla_29766
"__inference__update_step_xla_29771
"__inference__update_step_xla_29776
"__inference__update_step_xla_29781
"__inference__update_step_xla_29786
"__inference__update_step_xla_29791
"__inference__update_step_xla_29796
"__inference__update_step_xla_29801
"__inference__update_step_xla_29806
"__inference__update_step_xla_29811
"__inference__update_step_xla_29816
"__inference__update_step_xla_29821
"__inference__update_step_xla_29826
"__inference__update_step_xla_29831
"__inference__update_step_xla_29836
"__inference__update_step_xla_29841
"__inference__update_step_xla_29846
"__inference__update_step_xla_29851
"__inference__update_step_xla_29856
"__inference__update_step_xla_29861
"__inference__update_step_xla_29866
"__inference__update_step_xla_29871
"__inference__update_step_xla_29876
"__inference__update_step_xla_29881
"__inference__update_step_xla_29886
"__inference__update_step_xla_29891
"__inference__update_step_xla_29896
"__inference__update_step_xla_29901
"__inference__update_step_xla_29906
"__inference__update_step_xla_29911п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0zшtrace_0zщtrace_1zъtrace_2zыtrace_3zьtrace_4zэtrace_5zюtrace_6zяtrace_7zЁtrace_8zёtrace_9zЄtrace_10zєtrace_11zЇtrace_12zїtrace_13zЎtrace_14zўtrace_15z°trace_16z∙trace_17z·trace_18z√trace_19z№trace_20z¤trace_21z■trace_22z trace_23zАtrace_24zБtrace_25zВtrace_26zГtrace_27zДtrace_28zЕtrace_29zЖtrace_30zЗtrace_31zИtrace_32zЙtrace_33
ЄBя
$__inference_signature_wrapper_211603imageInput1imageInput2"м
е▓б
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 /

kwonlyargs!Ъ
jimageInput1
jimageInput2
kwonlydefaults
 
annotationsк *
 
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
(
Г0"
trackable_list_wrapper
╕
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
у
Пtrace_02─
'__inference_conv2d_layer_call_fn_211740Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
■
Рtrace_02▀
B__inference_conv2d_layer_call_and_return_conditional_losses_211754Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
▀
Цtrace_0
Чtrace_12д
4__inference_batch_normalization_layer_call_fn_211767
4__inference_batch_normalization_layer_call_fn_211780╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0zЧtrace_1
Х
Шtrace_0
Щtrace_12┌
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211833
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211856╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0zЩtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
р
Яtrace_02┴
$__inference_elu_layer_call_fn_211861Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЯtrace_0
√
аtrace_02▄
?__inference_elu_layer_call_and_return_conditional_losses_211866Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
Ю	variables
Яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
ъ
жtrace_02╦
.__inference_max_pooling2d_layer_call_fn_211871Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zжtrace_0
Е
зtrace_02ц
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_211876Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
╧
нtrace_0
оtrace_12Ф
2__inference_spatial_dropout2d_layer_call_fn_211881
2__inference_spatial_dropout2d_layer_call_fn_211886й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1
Е
пtrace_0
░trace_12╩
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211909
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211914й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0z░trace_1
"
_generic_user_object
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
(
Д0"
trackable_list_wrapper
╕
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
х
╢trace_02╞
)__inference_conv2d_1_layer_call_fn_211923Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
А
╖trace_02с
D__inference_conv2d_1_layer_call_and_return_conditional_losses_211937Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
Q0
R1
S2
T3"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
у
╜trace_0
╛trace_12и
6__inference_batch_normalization_1_layer_call_fn_211950
6__inference_batch_normalization_1_layer_call_fn_211963╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0z╛trace_1
Щ
┐trace_0
└trace_12▐
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212016
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212039╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0z└trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
т
╞trace_02├
&__inference_elu_1_layer_call_fn_212044Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
¤
╟trace_02▐
A__inference_elu_1_layer_call_and_return_conditional_losses_212049Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
ь
═trace_02═
0__inference_max_pooling2d_1_layer_call_fn_212054Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
З
╬trace_02ш
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_212059Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╬trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
╙
╘trace_0
╒trace_12Ш
4__inference_spatial_dropout2d_1_layer_call_fn_212064
4__inference_spatial_dropout2d_1_layer_call_fn_212069й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0z╒trace_1
Й
╓trace_0
╫trace_12╬
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212092
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212097й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0z╫trace_1
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
(
Е0"
trackable_list_wrapper
╕
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
╠	variables
═trainable_variables
╬regularization_losses
╨__call__
+╤&call_and_return_all_conditional_losses
'╤"call_and_return_conditional_losses"
_generic_user_object
х
▌trace_02╞
)__inference_conv2d_2_layer_call_fn_212106Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0
А
▐trace_02с
D__inference_conv2d_2_layer_call_and_return_conditional_losses_212120Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
W0
X1
Y2
Z3"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
у
фtrace_0
хtrace_12и
6__inference_batch_normalization_2_layer_call_fn_212133
6__inference_batch_normalization_2_layer_call_fn_212146╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0zхtrace_1
Щ
цtrace_0
чtrace_12▐
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212199
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212222╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0zчtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
┌	variables
█trainable_variables
▄regularization_losses
▐__call__
+▀&call_and_return_all_conditional_losses
'▀"call_and_return_conditional_losses"
_generic_user_object
т
эtrace_02├
&__inference_elu_2_layer_call_fn_212227Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zэtrace_0
¤
юtrace_02▐
A__inference_elu_2_layer_call_and_return_conditional_losses_212232Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zюtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
ь
Їtrace_02═
0__inference_max_pooling2d_2_layer_call_fn_212237Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЇtrace_0
З
їtrace_02ш
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_212242Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zїtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
╙
√trace_0
№trace_12Ш
4__inference_spatial_dropout2d_2_layer_call_fn_212247
4__inference_spatial_dropout2d_2_layer_call_fn_212252й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z√trace_0z№trace_1
Й
¤trace_0
■trace_12╬
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212275
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212280й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0z■trace_1
"
_generic_user_object
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
(
Ж0"
trackable_list_wrapper
╕
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
э	variables
юtrainable_variables
яregularization_losses
ё__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
х
Дtrace_02╞
)__inference_conv2d_3_layer_call_fn_212289Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
А
Еtrace_02с
D__inference_conv2d_3_layer_call_and_return_conditional_losses_212303Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
]0
^1
_2
`3"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Ї	variables
їtrainable_variables
Ўregularization_losses
°__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses"
_generic_user_object
у
Лtrace_0
Мtrace_12и
6__inference_batch_normalization_3_layer_call_fn_212316
6__inference_batch_normalization_3_layer_call_fn_212329╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0zМtrace_1
Щ
Нtrace_0
Оtrace_12▐
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212382
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212405╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0zОtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
т
Фtrace_02├
&__inference_elu_3_layer_call_fn_212410Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
¤
Хtrace_02▐
A__inference_elu_3_layer_call_and_return_conditional_losses_212415Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ь
Ыtrace_02═
0__inference_max_pooling2d_3_layer_call_fn_212420Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
З
Ьtrace_02ш
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_212425Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
╙
вtrace_0
гtrace_12Ш
4__inference_spatial_dropout2d_3_layer_call_fn_212430
4__inference_spatial_dropout2d_3_layer_call_fn_212435й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0zгtrace_1
Й
дtrace_0
еtrace_12╬
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212458
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212463й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0zеtrace_1
"
_generic_user_object
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
(
З0"
trackable_list_wrapper
╕
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
х
лtrace_02╞
)__inference_conv2d_4_layer_call_fn_212472Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
А
мtrace_02с
D__inference_conv2d_4_layer_call_and_return_conditional_losses_212486Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
c0
d1
e2
f3"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
у
▓trace_0
│trace_12и
6__inference_batch_normalization_4_layer_call_fn_212499
6__inference_batch_normalization_4_layer_call_fn_212512╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0z│trace_1
Щ
┤trace_0
╡trace_12▐
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212565
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212588╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0z╡trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
т
╗trace_02├
&__inference_elu_4_layer_call_fn_212593Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
¤
╝trace_02▐
A__inference_elu_4_layer_call_and_return_conditional_losses_212598Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╜non_trainable_variables
╛layers
┐metrics
 └layer_regularization_losses
┴layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
ь
┬trace_02═
0__inference_max_pooling2d_4_layer_call_fn_212603Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
З
├trace_02ш
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_212608Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z├trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
╙
╔trace_0
╩trace_12Ш
4__inference_spatial_dropout2d_4_layer_call_fn_212613
4__inference_spatial_dropout2d_4_layer_call_fn_212618й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0z╩trace_1
Й
╦trace_0
╠trace_12╬
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212641
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212646й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╦trace_0z╠trace_1
"
_generic_user_object
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
(
И0"
trackable_list_wrapper
╕
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
х
╥trace_02╞
)__inference_conv2d_5_layer_call_fn_212655Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╥trace_0
А
╙trace_02с
D__inference_conv2d_5_layer_call_and_return_conditional_losses_212669Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
i0
j1
k2
l3"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
у
┘trace_0
┌trace_12и
6__inference_batch_normalization_5_layer_call_fn_212682
6__inference_batch_normalization_5_layer_call_fn_212695╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┘trace_0z┌trace_1
Щ
█trace_0
▄trace_12▐
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212748
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212771╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0z▄trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
т
тtrace_02├
&__inference_elu_5_layer_call_fn_212776Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
¤
уtrace_02▐
A__inference_elu_5_layer_call_and_return_conditional_losses_212781Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
ь
щtrace_02═
0__inference_max_pooling2d_5_layer_call_fn_212786Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
З
ъtrace_02ш
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_212791Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zъtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
╙
Ёtrace_0
ёtrace_12Ш
4__inference_spatial_dropout2d_5_layer_call_fn_212796
4__inference_spatial_dropout2d_5_layer_call_fn_212801й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0zёtrace_1
Й
Єtrace_0
єtrace_12╬
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212824
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212829й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0zєtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
╨	variables
╤trainable_variables
╥regularization_losses
╘__call__
+╒&call_and_return_all_conditional_losses
'╒"call_and_return_conditional_losses"
_generic_user_object
ф
∙trace_02┼
(__inference_flatten_layer_call_fn_212834Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
 
·trace_02р
C__inference_flatten_layer_call_and_return_conditional_losses_212840Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z·trace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
╓	variables
╫trainable_variables
╪regularization_losses
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses"
_generic_user_object
т
Аtrace_02├
&__inference_dense_layer_call_fn_212849Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
¤
Бtrace_02▐
A__inference_dense_layer_call_and_return_conditional_losses_212859Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
<
o0
p1
q2
r3"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
▄	variables
▌trainable_variables
▐regularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
у
Зtrace_0
Иtrace_12и
6__inference_batch_normalization_6_layer_call_fn_212872
6__inference_batch_normalization_6_layer_call_fn_212885╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0zИtrace_1
Щ
Йtrace_0
Кtrace_12▐
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212953
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212973╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0zКtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
т
Рtrace_02├
&__inference_elu_6_layer_call_fn_212978Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
¤
Сtrace_02▐
A__inference_elu_6_layer_call_and_return_conditional_losses_212983Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zСtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
щ	variables
ъtrainable_variables
ыregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
╗
Чtrace_0
Шtrace_12А
(__inference_dropout_layer_call_fn_212988
(__inference_dropout_layer_call_fn_212993й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0zШtrace_1
ё
Щtrace_0
Ъtrace_12╢
C__inference_dropout_layer_call_and_return_conditional_losses_213005
C__inference_dropout_layer_call_and_return_conditional_losses_213010й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0zЪtrace_1
"
_generic_user_object
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Ё	variables
ёtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
ф
аtrace_02┼
(__inference_dense_1_layer_call_fn_213019Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
 
бtrace_02р
C__inference_dense_1_layer_call_and_return_conditional_losses_213029Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
<
u0
v1
w2
x3"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ў	variables
ўtrainable_variables
°regularization_losses
·__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
у
зtrace_0
иtrace_12и
6__inference_batch_normalization_7_layer_call_fn_213042
6__inference_batch_normalization_7_layer_call_fn_213055╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0zиtrace_1
Щ
йtrace_0
кtrace_12▐
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213115
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213135╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0zкtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
¤	variables
■trainable_variables
 regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
т
░trace_02├
&__inference_elu_7_layer_call_fn_213140Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
¤
▒trace_02▐
A__inference_elu_7_layer_call_and_return_conditional_losses_213145Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
╧
▓trace_02░
__inference_loss_fn_0_213153П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z▓trace_0
╧
│trace_02░
__inference_loss_fn_1_213161П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z│trace_0
╧
┤trace_02░
__inference_loss_fn_2_213169П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z┤trace_0
╧
╡trace_02░
__inference_loss_fn_3_213177П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z╡trace_0
╧
╢trace_02░
__inference_loss_fn_4_213185П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z╢trace_0
╧
╖trace_02░
__inference_loss_fn_5_213193П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z╖trace_0
Ц
M0
N1
S2
T3
Y4
Z5
_6
`7
e8
f9
k10
l11
q12
r13
w14
x15"
trackable_list_wrapper
╞
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
 17
!18
"19
#20
$21
%22
&23
'24
(25
)26
*27
+28
,29
-30
.31
/32
033
134
235
336
437"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
-__inference_imageEncoder_layer_call_fn_210588input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
-__inference_imageEncoder_layer_call_fn_210689input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЗBД
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЗBД
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
БB■
7__inference_cosineSimilarityMetric_layer_call_fn_211657inputs_0inputs_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
7__inference_cosineSimilarityMetric_layer_call_fn_211663inputs_0inputs_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЬBЩ
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211687inputs_0inputs_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЬBЩ
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211711inputs_0inputs_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╪B╒
.__inference_siameseOutput_layer_call_fn_211720inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211731inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
╕	variables
╣	keras_api

║total

╗count"
_tf_keras_metric
c
╝	variables
╜	keras_api

╛total

┐count
└
_fn_kwargs"
_tf_keras_metric
.:,

@ 2Adam/m/conv2d/kernel
.:,

@ 2Adam/v/conv2d/kernel
 :@ 2Adam/m/conv2d/bias
 :@ 2Adam/v/conv2d/bias
.:,@ 2 Adam/m/batch_normalization/gamma
.:,@ 2 Adam/v/batch_normalization/gamma
-:+@ 2Adam/m/batch_normalization/beta
-:+@ 2Adam/v/batch_normalization/beta
0:.

@@ 2Adam/m/conv2d_1/kernel
0:.

@@ 2Adam/v/conv2d_1/kernel
": @ 2Adam/m/conv2d_1/bias
": @ 2Adam/v/conv2d_1/bias
0:.@ 2"Adam/m/batch_normalization_1/gamma
0:.@ 2"Adam/v/batch_normalization_1/gamma
/:-@ 2!Adam/m/batch_normalization_1/beta
/:-@ 2!Adam/v/batch_normalization_1/beta
1:/@А 2Adam/m/conv2d_2/kernel
1:/@А 2Adam/v/conv2d_2/kernel
#:!А 2Adam/m/conv2d_2/bias
#:!А 2Adam/v/conv2d_2/bias
1:/А 2"Adam/m/batch_normalization_2/gamma
1:/А 2"Adam/v/batch_normalization_2/gamma
0:.А 2!Adam/m/batch_normalization_2/beta
0:.А 2!Adam/v/batch_normalization_2/beta
2:0АА 2Adam/m/conv2d_3/kernel
2:0АА 2Adam/v/conv2d_3/kernel
#:!А 2Adam/m/conv2d_3/bias
#:!А 2Adam/v/conv2d_3/bias
1:/А 2"Adam/m/batch_normalization_3/gamma
1:/А 2"Adam/v/batch_normalization_3/gamma
0:.А 2!Adam/m/batch_normalization_3/beta
0:.А 2!Adam/v/batch_normalization_3/beta
2:0АА 2Adam/m/conv2d_4/kernel
2:0АА 2Adam/v/conv2d_4/kernel
#:!А 2Adam/m/conv2d_4/bias
#:!А 2Adam/v/conv2d_4/bias
1:/А 2"Adam/m/batch_normalization_4/gamma
1:/А 2"Adam/v/batch_normalization_4/gamma
0:.А 2!Adam/m/batch_normalization_4/beta
0:.А 2!Adam/v/batch_normalization_4/beta
2:0АА 2Adam/m/conv2d_5/kernel
2:0АА 2Adam/v/conv2d_5/kernel
#:!А 2Adam/m/conv2d_5/bias
#:!А 2Adam/v/conv2d_5/bias
1:/А 2"Adam/m/batch_normalization_5/gamma
1:/А 2"Adam/v/batch_normalization_5/gamma
0:.А 2!Adam/m/batch_normalization_5/beta
0:.А 2!Adam/v/batch_normalization_5/beta
':%
Аш 2Adam/m/dense/kernel
':%
Аш 2Adam/v/dense/kernel
 :ш 2Adam/m/dense/bias
 :ш 2Adam/v/dense/bias
1:/ш 2"Adam/m/batch_normalization_6/gamma
1:/ш 2"Adam/v/batch_normalization_6/gamma
0:.ш 2!Adam/m/batch_normalization_6/beta
0:.ш 2!Adam/v/batch_normalization_6/beta
):'
шЇ 2Adam/m/dense_1/kernel
):'
шЇ 2Adam/v/dense_1/kernel
": Ї 2Adam/m/dense_1/bias
": Ї 2Adam/v/dense_1/bias
1:/Ї 2"Adam/m/batch_normalization_7/gamma
1:/Ї 2"Adam/v/batch_normalization_7/gamma
0:.Ї 2!Adam/m/batch_normalization_7/beta
0:.Ї 2!Adam/v/batch_normalization_7/beta
-:+ 2Adam/m/siameseOutput/kernel
-:+ 2Adam/v/siameseOutput/kernel
':% 2Adam/m/siameseOutput/bias
':% 2Adam/v/siameseOutput/bias
эBъ
"__inference__update_step_xla_29746gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29751gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29756gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29761gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29766gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29771gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29776gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29781gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29786gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29791gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29796gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29801gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29806gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29811gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29816gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29821gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29826gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29831gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29836gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29841gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29846gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29851gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29856gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29861gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29866gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29871gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29876gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29881gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29886gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29891gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29896gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29901gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29906gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_29911gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Г0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_conv2d_layer_call_fn_211740inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_conv2d_layer_call_and_return_conditional_losses_211754inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBя
4__inference_batch_normalization_layer_call_fn_211767inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
4__inference_batch_normalization_layer_call_fn_211780inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211833inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211856inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╬B╦
$__inference_elu_layer_call_fn_211861inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щBц
?__inference_elu_layer_call_and_return_conditional_losses_211866inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╪B╒
.__inference_max_pooling2d_layer_call_fn_211871inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_211876inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBх
2__inference_spatial_dropout2d_layer_call_fn_211881inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
шBх
2__inference_spatial_dropout2d_layer_call_fn_211886inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211909inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211914inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Д0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_1_layer_call_fn_211923inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_1_layer_call_and_return_conditional_losses_211937inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_1_layer_call_fn_211950inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_1_layer_call_fn_211963inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212016inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212039inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_1_layer_call_fn_212044inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_1_layer_call_and_return_conditional_losses_212049inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_1_layer_call_fn_212054inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_212059inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
4__inference_spatial_dropout2d_1_layer_call_fn_212064inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
4__inference_spatial_dropout2d_1_layer_call_fn_212069inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212092inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212097inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Е0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_2_layer_call_fn_212106inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_2_layer_call_and_return_conditional_losses_212120inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_2_layer_call_fn_212133inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_2_layer_call_fn_212146inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212199inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212222inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_2_layer_call_fn_212227inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_2_layer_call_and_return_conditional_losses_212232inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_2_layer_call_fn_212237inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_212242inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
4__inference_spatial_dropout2d_2_layer_call_fn_212247inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
4__inference_spatial_dropout2d_2_layer_call_fn_212252inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212275inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212280inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ж0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_3_layer_call_fn_212289inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_3_layer_call_and_return_conditional_losses_212303inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_3_layer_call_fn_212316inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_3_layer_call_fn_212329inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212382inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212405inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_3_layer_call_fn_212410inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_3_layer_call_and_return_conditional_losses_212415inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_3_layer_call_fn_212420inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_212425inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
4__inference_spatial_dropout2d_3_layer_call_fn_212430inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
4__inference_spatial_dropout2d_3_layer_call_fn_212435inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212458inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212463inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
З0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_4_layer_call_fn_212472inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_212486inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_4_layer_call_fn_212499inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_4_layer_call_fn_212512inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212565inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212588inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_4_layer_call_fn_212593inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_4_layer_call_and_return_conditional_losses_212598inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_4_layer_call_fn_212603inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_212608inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
4__inference_spatial_dropout2d_4_layer_call_fn_212613inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
4__inference_spatial_dropout2d_4_layer_call_fn_212618inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212641inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212646inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
И0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_5_layer_call_fn_212655inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_212669inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_5_layer_call_fn_212682inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_5_layer_call_fn_212695inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212748inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212771inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_5_layer_call_fn_212776inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_5_layer_call_and_return_conditional_losses_212781inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_max_pooling2d_5_layer_call_fn_212786inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_212791inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
4__inference_spatial_dropout2d_5_layer_call_fn_212796inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
4__inference_spatial_dropout2d_5_layer_call_fn_212801inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212824inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212829inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_flatten_layer_call_fn_212834inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_flatten_layer_call_and_return_conditional_losses_212840inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_dense_layer_call_fn_212849inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_dense_layer_call_and_return_conditional_losses_212859inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_6_layer_call_fn_212872inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_6_layer_call_fn_212885inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212953inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212973inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_6_layer_call_fn_212978inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_6_layer_call_and_return_conditional_losses_212983inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
(__inference_dropout_layer_call_fn_212988inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▐B█
(__inference_dropout_layer_call_fn_212993inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
C__inference_dropout_layer_call_and_return_conditional_losses_213005inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
C__inference_dropout_layer_call_and_return_conditional_losses_213010inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_dense_1_layer_call_fn_213019inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_1_layer_call_and_return_conditional_losses_213029inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЇBё
6__inference_batch_normalization_7_layer_call_fn_213042inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
6__inference_batch_normalization_7_layer_call_fn_213055inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213115inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213135inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_elu_7_layer_call_fn_213140inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_elu_7_layer_call_and_return_conditional_losses_213145inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│B░
__inference_loss_fn_0_213153"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_1_213161"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_2_213169"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_3_213177"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_4_213185"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_5_213193"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
0
║0
╗1"
trackable_list_wrapper
.
╕	variables"
_generic_user_object
:  (2total
:  (2count
0
╛0
┐1"
trackable_list_wrapper
.
╝	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperд
"__inference__update_step_xla_29746~xвu
nвk
!К
gradient

@
<Т9	%в"
·

@
А
p
` VariableSpec 
`абЬВД╨>
к "
 М
"__inference__update_step_xla_29751f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`р╙╚ВД╨>
к "
 М
"__inference__update_step_xla_29756f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`А═║АГ╨>
к "
 М
"__inference__update_step_xla_29761f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`└╘║АГ╨>
к "
 д
"__inference__update_step_xla_29766~xвu
nвk
!К
gradient

@@
<Т9	%в"
·

@@
А
p
` VariableSpec 
`└ъ¤ВД╨>
к "
 М
"__inference__update_step_xla_29771f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`р·¤ВД╨>
к "
 М
"__inference__update_step_xla_29776f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`А╘¤ВД╨>
к "
 М
"__inference__update_step_xla_29781f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`а╒¤ВД╨>
к "
 з
"__inference__update_step_xla_29786Аzвw
pвm
"К
gradient@А
=Т:	&в#
·@А
А
p
` VariableSpec 
`а╖╒АГ╨>
к "
 О
"__inference__update_step_xla_29791hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`└╟╒АГ╨>
к "
 О
"__inference__update_step_xla_29796hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АМ▐АГ╨>
к "
 О
"__inference__update_step_xla_29801hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`рФ▐АГ╨>
к "
 й
"__inference__update_step_xla_29806В|вy
rвo
#К 
gradientАА
>Т;	'в$
·АА
А
p
` VariableSpec 
`└Л▀АГ╨>
к "
 О
"__inference__update_step_xla_29811hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`рЫ▀АГ╨>
к "
 О
"__inference__update_step_xla_29816hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`└р▀АГ╨>
к "
 О
"__inference__update_step_xla_29821hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`ащ▀АГ╨>
к "
 й
"__inference__update_step_xla_29826В|вy
rвo
#К 
gradientАА
>Т;	'в$
·АА
А
p
` VariableSpec 
`АсюАГ╨>
к "
 О
"__inference__update_step_xla_29831hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АЁюАГ╨>
к "
 О
"__inference__update_step_xla_29836hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`р┤яАГ╨>
к "
 О
"__inference__update_step_xla_29841hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`└╜яАГ╨>
к "
 й
"__inference__update_step_xla_29846В|вy
rвo
#К 
gradientАА
>Т;	'в$
·АА
А
p
` VariableSpec 
`А┤ЎАГ╨>
к "
 О
"__inference__update_step_xla_29851hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`а─ЎАГ╨>
к "
 О
"__inference__update_step_xla_29856hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`рЗўАГ╨>
к "
 О
"__inference__update_step_xla_29861hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`└РўАГ╨>
к "
 а
"__inference__update_step_xla_29866ztвq
jвg
#К 
gradient         ш
6Т3	в
·
Аш
А
p
` VariableSpec 
`ажЖБГ╨>
к "
 О
"__inference__update_step_xla_29871hbв_
XвU
К
gradientш
1Т.	в
·ш
А
p
` VariableSpec 
`рЬшеЕ╨>
к "
 О
"__inference__update_step_xla_29876hbв_
XвU
К
gradientш
1Т.	в
·ш
А
p
` VariableSpec 
`рФЖБГ╨>
к "
 О
"__inference__update_step_xla_29881hbв_
XвU
К
gradientш
1Т.	в
·ш
А
p
` VariableSpec 
`р╝ЖБГ╨>
к "
 Ш
"__inference__update_step_xla_29886rlвi
bв_
К
gradient
шЇ
6Т3	в
·
шЇ
А
p
` VariableSpec 
`а°ЛБГ╨>
к "
 О
"__inference__update_step_xla_29891hbв_
XвU
К
gradientЇ
1Т.	в
·Ї
А
p
` VariableSpec 
`└■ЛБГ╨>
к "
 О
"__inference__update_step_xla_29896hbв_
XвU
К
gradientЇ
1Т.	в
·Ї
А
p
` VariableSpec 
`рЁЛБГ╨>
к "
 О
"__inference__update_step_xla_29901hbв_
XвU
К
gradientЇ
1Т.	в
·Ї
А
p
` VariableSpec 
`АшЛБГ╨>
к "
 Ф
"__inference__update_step_xla_29906nhвe
^в[
К
gradient
4Т1	в
·
А
p
` VariableSpec 
`р╥ПБГ╨>
к "
 М
"__inference__update_step_xla_29911f`в]
VвS
К
gradient
0Т-	в
·
А
p
` VariableSpec 
`└вОБГ╨>
к "
 П
!__inference__wrapped_model_208876щ2IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuGHtвq
jвg
eЪb
/К,
imageInput1         рр
/К,
imageInput2         рр
к "=к:
8
siameseOutput'К$
siameseoutput         ў
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212016бQRSTQвN
GвD
:К7
inputs+                           @
p

 
к "FвC
<К9
tensor_0+                           @
Ъ ў
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_212039бQRSTQвN
GвD
:К7
inputs+                           @
p 

 
к "FвC
<К9
tensor_0+                           @
Ъ ╤
6__inference_batch_normalization_1_layer_call_fn_211950ЦQRSTQвN
GвD
:К7
inputs+                           @
p

 
к ";К8
unknown+                           @╤
6__inference_batch_normalization_1_layer_call_fn_211963ЦQRSTQвN
GвD
:К7
inputs+                           @
p 

 
к ";К8
unknown+                           @∙
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212199гWXYZRвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ∙
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_212222гWXYZRвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╙
6__inference_batch_normalization_2_layer_call_fn_212133ШWXYZRвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╙
6__inference_batch_normalization_2_layer_call_fn_212146ШWXYZRвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           А∙
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212382г]^_`RвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ∙
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_212405г]^_`RвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╙
6__inference_batch_normalization_3_layer_call_fn_212316Ш]^_`RвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╙
6__inference_batch_normalization_3_layer_call_fn_212329Ш]^_`RвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           А∙
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212565гcdefRвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ∙
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_212588гcdefRвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╙
6__inference_batch_normalization_4_layer_call_fn_212499ШcdefRвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╙
6__inference_batch_normalization_4_layer_call_fn_212512ШcdefRвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           А∙
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212748гijklRвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ∙
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_212771гijklRвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╙
6__inference_batch_normalization_5_layer_call_fn_212682ШijklRвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╙
6__inference_batch_normalization_5_layer_call_fn_212695ШijklRвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           А─
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212953oqrpo8в5
.в+
!К
inputs         ш
p

 
к "-в*
#К 
tensor_0         ш
Ъ ─
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_212973oqrpo8в5
.в+
!К
inputs         ш
p 

 
к "-в*
#К 
tensor_0         ш
Ъ Ю
6__inference_batch_normalization_6_layer_call_fn_212872dqrpo8в5
.в+
!К
inputs         ш
p

 
к ""К
unknown         шЮ
6__inference_batch_normalization_6_layer_call_fn_212885dqrpo8в5
.в+
!К
inputs         ш
p 

 
к ""К
unknown         ш─
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213115owxvu8в5
.в+
!К
inputs         Ї
p

 
к "-в*
#К 
tensor_0         Ї
Ъ ─
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_213135owxvu8в5
.в+
!К
inputs         Ї
p 

 
к "-в*
#К 
tensor_0         Ї
Ъ Ю
6__inference_batch_normalization_7_layer_call_fn_213042dwxvu8в5
.в+
!К
inputs         Ї
p

 
к ""К
unknown         ЇЮ
6__inference_batch_normalization_7_layer_call_fn_213055dwxvu8в5
.в+
!К
inputs         Ї
p 

 
к ""К
unknown         Її
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211833бKLMNQвN
GвD
:К7
inputs+                           @
p

 
к "FвC
<К9
tensor_0+                           @
Ъ ї
O__inference_batch_normalization_layer_call_and_return_conditional_losses_211856бKLMNQвN
GвD
:К7
inputs+                           @
p 

 
к "FвC
<К9
tensor_0+                           @
Ъ ╧
4__inference_batch_normalization_layer_call_fn_211767ЦKLMNQвN
GвD
:К7
inputs+                           @
p

 
к ";К8
unknown+                           @╧
4__inference_batch_normalization_layer_call_fn_211780ЦKLMNQвN
GвD
:К7
inputs+                           @
p 

 
к ";К8
unknown+                           @╗
D__inference_conv2d_1_layer_call_and_return_conditional_losses_211937sOP7в4
-в*
(К%
inputs         pp@
к "4в1
*К'
tensor_0         pp@
Ъ Х
)__inference_conv2d_1_layer_call_fn_211923hOP7в4
-в*
(К%
inputs         pp@
к ")К&
unknown         pp@╝
D__inference_conv2d_2_layer_call_and_return_conditional_losses_212120tUV7в4
-в*
(К%
inputs         88@
к "5в2
+К(
tensor_0         88А
Ъ Ц
)__inference_conv2d_2_layer_call_fn_212106iUV7в4
-в*
(К%
inputs         88@
к "*К'
unknown         88А╜
D__inference_conv2d_3_layer_call_and_return_conditional_losses_212303u[\8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_conv2d_3_layer_call_fn_212289j[\8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╜
D__inference_conv2d_4_layer_call_and_return_conditional_losses_212486uab8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_conv2d_4_layer_call_fn_212472jab8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╜
D__inference_conv2d_5_layer_call_and_return_conditional_losses_212669ugh8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_conv2d_5_layer_call_fn_212655jgh8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╜
B__inference_conv2d_layer_call_and_return_conditional_losses_211754wIJ9в6
/в,
*К'
inputs         рр
к "6в3
,К)
tensor_0         рр@
Ъ Ч
'__inference_conv2d_layer_call_fn_211740lIJ9в6
/в,
*К'
inputs         рр
к "+К(
unknown         рр@ы
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211687Фdвa
ZвW
MЪJ
#К 
inputs_0         Ї
#К 
inputs_1         Ї

 
p
к ",в)
"К
tensor_0         
Ъ ы
R__inference_cosineSimilarityMetric_layer_call_and_return_conditional_losses_211711Фdвa
ZвW
MЪJ
#К 
inputs_0         Ї
#К 
inputs_1         Ї

 
p 
к ",в)
"К
tensor_0         
Ъ ┼
7__inference_cosineSimilarityMetric_layer_call_fn_211657Йdвa
ZвW
MЪJ
#К 
inputs_0         Ї
#К 
inputs_1         Ї

 
p
к "!К
unknown         ┼
7__inference_cosineSimilarityMetric_layer_call_fn_211663Йdвa
ZвW
MЪJ
#К 
inputs_0         Ї
#К 
inputs_1         Ї

 
p 
к "!К
unknown         ╢
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211032р2IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuGH|вy
rвo
eЪb
/К,
imageInput1         рр
/К,
imageInput2         рр
p

 
к ",в)
"К
tensor_0         
Ъ ╢
Q__inference_cowMuzzleSiameseModel_layer_call_and_return_conditional_losses_211237р2IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuGH|вy
rвo
eЪb
/К,
imageInput1         рр
/К,
imageInput2         рр
p 

 
к ",в)
"К
tensor_0         
Ъ Р
6__inference_cowMuzzleSiameseModel_layer_call_fn_211343╒2IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuGH|вy
rвo
eЪb
/К,
imageInput1         рр
/К,
imageInput2         рр
p

 
к "!К
unknown         Р
6__inference_cowMuzzleSiameseModel_layer_call_fn_211449╒2IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuGH|вy
rвo
eЪb
/К,
imageInput1         рр
/К,
imageInput2         рр
p 

 
к "!К
unknown         м
C__inference_dense_1_layer_call_and_return_conditional_losses_213029est0в-
&в#
!К
inputs         ш
к "-в*
#К 
tensor_0         Ї
Ъ Ж
(__inference_dense_1_layer_call_fn_213019Zst0в-
&в#
!К
inputs         ш
к ""К
unknown         Їк
A__inference_dense_layer_call_and_return_conditional_losses_212859emn0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         ш
Ъ Д
&__inference_dense_layer_call_fn_212849Zmn0в-
&в#
!К
inputs         А
к ""К
unknown         шм
C__inference_dropout_layer_call_and_return_conditional_losses_213005e4в1
*в'
!К
inputs         ш
p
к "-в*
#К 
tensor_0         ш
Ъ м
C__inference_dropout_layer_call_and_return_conditional_losses_213010e4в1
*в'
!К
inputs         ш
p 
к "-в*
#К 
tensor_0         ш
Ъ Ж
(__inference_dropout_layer_call_fn_212988Z4в1
*в'
!К
inputs         ш
p
к ""К
unknown         шЖ
(__inference_dropout_layer_call_fn_212993Z4в1
*в'
!К
inputs         ш
p 
к ""К
unknown         ш┤
A__inference_elu_1_layer_call_and_return_conditional_losses_212049o7в4
-в*
(К%
inputs         pp@
к "4в1
*К'
tensor_0         pp@
Ъ О
&__inference_elu_1_layer_call_fn_212044d7в4
-в*
(К%
inputs         pp@
к ")К&
unknown         pp@╢
A__inference_elu_2_layer_call_and_return_conditional_losses_212232q8в5
.в+
)К&
inputs         88А
к "5в2
+К(
tensor_0         88А
Ъ Р
&__inference_elu_2_layer_call_fn_212227f8в5
.в+
)К&
inputs         88А
к "*К'
unknown         88А╢
A__inference_elu_3_layer_call_and_return_conditional_losses_212415q8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Р
&__inference_elu_3_layer_call_fn_212410f8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╢
A__inference_elu_4_layer_call_and_return_conditional_losses_212598q8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Р
&__inference_elu_4_layer_call_fn_212593f8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╢
A__inference_elu_5_layer_call_and_return_conditional_losses_212781q8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Р
&__inference_elu_5_layer_call_fn_212776f8в5
.в+
)К&
inputs         А
к "*К'
unknown         Аж
A__inference_elu_6_layer_call_and_return_conditional_losses_212983a0в-
&в#
!К
inputs         ш
к "-в*
#К 
tensor_0         ш
Ъ А
&__inference_elu_6_layer_call_fn_212978V0в-
&в#
!К
inputs         ш
к ""К
unknown         шж
A__inference_elu_7_layer_call_and_return_conditional_losses_213145a0в-
&в#
!К
inputs         Ї
к "-в*
#К 
tensor_0         Ї
Ъ А
&__inference_elu_7_layer_call_fn_213140V0в-
&в#
!К
inputs         Ї
к ""К
unknown         Ї╢
?__inference_elu_layer_call_and_return_conditional_losses_211866s9в6
/в,
*К'
inputs         рр@
к "6в3
,К)
tensor_0         рр@
Ъ Р
$__inference_elu_layer_call_fn_211861h9в6
/в,
*К'
inputs         рр@
к "+К(
unknown         рр@░
C__inference_flatten_layer_call_and_return_conditional_losses_212840i8в5
.в+
)К&
inputs         А
к "-в*
#К 
tensor_0         А
Ъ К
(__inference_flatten_layer_call_fn_212834^8в5
.в+
)К&
inputs         А
к ""К
unknown         АЄ
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210320е0IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuBв?
8в5
+К(
input_1         рр
p

 
к "-в*
#К 
tensor_0         Ї
Ъ Є
H__inference_imageEncoder_layer_call_and_return_conditional_losses_210487е0IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuBв?
8в5
+К(
input_1         рр
p 

 
к "-в*
#К 
tensor_0         Ї
Ъ ╠
-__inference_imageEncoder_layer_call_fn_210588Ъ0IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuBв?
8в5
+К(
input_1         рр
p

 
к ""К
unknown         Ї╠
-__inference_imageEncoder_layer_call_fn_210689Ъ0IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuBв?
8в5
+К(
input_1         рр
p 

 
к ""К
unknown         ЇD
__inference_loss_fn_0_213153$Iв

в 
к "К
unknown D
__inference_loss_fn_1_213161$Oв

в 
к "К
unknown D
__inference_loss_fn_2_213169$Uв

в 
к "К
unknown D
__inference_loss_fn_3_213177$[в

в 
к "К
unknown D
__inference_loss_fn_4_213185$aв

в 
к "К
unknown D
__inference_loss_fn_5_213193$gв

в 
к "К
unknown ї
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_212059еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_1_layer_call_fn_212054ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_212242еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_2_layer_call_fn_212237ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_212425еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_3_layer_call_fn_212420ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_212608еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_4_layer_call_fn_212603ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_212791еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_5_layer_call_fn_212786ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_211876еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_layer_call_fn_211871ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ░
I__inference_siameseOutput_layer_call_and_return_conditional_losses_211731cGH/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         
Ъ К
.__inference_siameseOutput_layer_call_fn_211720XGH/в,
%в"
 К
inputs         
к "!К
unknown         п
$__inference_signature_wrapper_211603Ж2IJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnqrpostwxvuGHРвМ
в 
ДкА
>
imageInput1/К,
imageinput1         рр
>
imageInput2/К,
imageinput2         рр"=к:
8
siameseOutput'К$
siameseoutput         ¤
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212092йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_1_layer_call_and_return_conditional_losses_212097йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_1_layer_call_fn_212064ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_1_layer_call_fn_212069ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    ¤
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212275йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_2_layer_call_and_return_conditional_losses_212280йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_2_layer_call_fn_212247ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_2_layer_call_fn_212252ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    ¤
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212458йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_3_layer_call_and_return_conditional_losses_212463йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_3_layer_call_fn_212430ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_3_layer_call_fn_212435ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    ¤
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212641йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_4_layer_call_and_return_conditional_losses_212646йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_4_layer_call_fn_212613ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_4_layer_call_fn_212618ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    ¤
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212824йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ ¤
O__inference_spatial_dropout2d_5_layer_call_and_return_conditional_losses_212829йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╫
4__inference_spatial_dropout2d_5_layer_call_fn_212796ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╫
4__inference_spatial_dropout2d_5_layer_call_fn_212801ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    √
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211909йVвS
LвI
CК@
inputs4                                    
p
к "OвL
EКB
tensor_04                                    
Ъ √
M__inference_spatial_dropout2d_layer_call_and_return_conditional_losses_211914йVвS
LвI
CК@
inputs4                                    
p 
к "OвL
EКB
tensor_04                                    
Ъ ╒
2__inference_spatial_dropout2d_layer_call_fn_211881ЮVвS
LвI
CК@
inputs4                                    
p
к "DКA
unknown4                                    ╒
2__inference_spatial_dropout2d_layer_call_fn_211886ЮVвS
LвI
CК@
inputs4                                    
p 
к "DКA
unknown4                                    