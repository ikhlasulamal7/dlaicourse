Я█	
╔1Ы1
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
A
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
└
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
k
Equal
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(Р
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
:
FloorMod
x"T
y"T
z"T"
Ttype:
	2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
0
Neg
x"T
y"T"
Ttype:
2
	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
7

Reciprocal
x"T
y"T"
Ttype:
2
	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
9
VarIsInitializedOp
resource
is_initialized
И"train*2.3.02v2.3.0-rc2-23-gb36436b0878ц∙
Г
conv2d_inputPlaceholder*1
_output_shapes
:         ЦЦ*
dtype0*&
shape:         ЦЦ
й
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            
У
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *╨?╛
У
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *╨?>
╫
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
а
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
К
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
О
conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
и
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ФФ*
paddingVALID*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
Г
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:         ФФ
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:         ФФ
Ъ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*/
_output_shapes
:         JJ*
ksize
*
paddingVALID*
strides

н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"             
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *я[ё╜
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *я[ё=
▌
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ж
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
О
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
valueB *    
Ф
conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
│
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
З
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         HH 
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:         HH 
Ю
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:         $$ *
ksize
*
paddingVALID*
strides

н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *лкк╜
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *лкк=
▌
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ж
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
О
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0*
valueB@*    
Ф
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
╡
conv2d_2/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ""@*
paddingVALID*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
З
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         ""@
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         ""@
Ю
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides

^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @H  
v
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/Const*
T0*)
_output_shapes
:         └Р
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"@H     
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛС╝
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛС<
╧
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
у
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╒
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
Ш
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:└РА*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
К
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0*
valueBА*    
М

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
k
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *|▌╜
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *|▌=
╙
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
Ь
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
С
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
u
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*
T0*'
_output_shapes
:         
Г
dense_1_targetPlaceholder*0
_output_shapes
:                  *
dtype0*%
shape:                  
v
total/Initializer/zerosConst*
_class

loc:@total*
_output_shapes
: *
dtype0*
valueB
 *    
x
totalVarHandleOp*
_class

loc:@total*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
_class

loc:@count*
_output_shapes
: *
dtype0*
valueB
 *    
x
countVarHandleOp*
_class

loc:@count*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
\
metrics/accuracy/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?

metrics/accuracy/GreaterGreaterdense_1/Sigmoidmetrics/accuracy/Cast/x*
T0*'
_output_shapes
:         
z
metrics/accuracy/Cast_1Castmetrics/accuracy/Greater*

DstT0*

SrcT0
*'
_output_shapes
:         
Г
metrics/accuracy/EqualEqualdense_1_targetmetrics/accuracy/Cast_1*
T0*0
_output_shapes
:                  
Б
metrics/accuracy/Cast_2Castmetrics/accuracy/Equal*

DstT0*

SrcT0
*0
_output_shapes
:                  
r
'metrics/accuracy/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         
Н
metrics/accuracy/MeanMeanmetrics/accuracy/Cast_2'metrics/accuracy/Mean/reduction_indices*
T0*#
_output_shapes
:         
`
metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
k
metrics/accuracy/SumSummetrics/accuracy/Meanmetrics/accuracy/Const*
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
Ы
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
_output_shapes
: *
dtype0
U
metrics/accuracy/SizeSizemetrics/accuracy/Mean*
T0*
_output_shapes
: 
f
metrics/accuracy/Cast_3Castmetrics/accuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
С
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_3%^metrics/accuracy/AssignAddVariableOp*
dtype0
п
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
С
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
У
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
в
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_1_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
loss/dense_1_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
\
loss/dense_1_loss/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
q
loss/dense_1_loss/subSubloss/dense_1_loss/sub/xloss/dense_1_loss/Const_1*
T0*
_output_shapes
: 
М
'loss/dense_1_loss/clip_by_value/MinimumMinimumdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:         
а
loss/dense_1_loss/clip_by_valueMaximum'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const_1*
T0*'
_output_shapes
:         
\
loss/dense_1_loss/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
К
loss/dense_1_loss/addAddV2loss/dense_1_loss/clip_by_valueloss/dense_1_loss/add/y*
T0*'
_output_shapes
:         
e
loss/dense_1_loss/LogLogloss/dense_1_loss/add*
T0*'
_output_shapes
:         
~
loss/dense_1_loss/mulMuldense_1_targetloss/dense_1_loss/Log*
T0*0
_output_shapes
:                  
^
loss/dense_1_loss/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Д
loss/dense_1_loss/sub_1Subloss/dense_1_loss/sub_1/xdense_1_target*
T0*0
_output_shapes
:                  
^
loss/dense_1_loss/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
М
loss/dense_1_loss/sub_2Subloss/dense_1_loss/sub_2/xloss/dense_1_loss/clip_by_value*
T0*'
_output_shapes
:         
^
loss/dense_1_loss/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
Ж
loss/dense_1_loss/add_1AddV2loss/dense_1_loss/sub_2loss/dense_1_loss/add_1/y*
T0*'
_output_shapes
:         
i
loss/dense_1_loss/Log_1Logloss/dense_1_loss/add_1*
T0*'
_output_shapes
:         
Л
loss/dense_1_loss/mul_1Mulloss/dense_1_loss/sub_1loss/dense_1_loss/Log_1*
T0*0
_output_shapes
:                  
Л
loss/dense_1_loss/add_2AddV2loss/dense_1_loss/mulloss/dense_1_loss/mul_1*
T0*0
_output_shapes
:                  
p
loss/dense_1_loss/NegNegloss/dense_1_loss/add_2*
T0*0
_output_shapes
:                  
s
(loss/dense_1_loss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         
Н
loss/dense_1_loss/MeanMeanloss/dense_1_loss/Neg(loss/dense_1_loss/Mean/reduction_indices*
T0*#
_output_shapes
:         
j
%loss/dense_1_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Ч
#loss/dense_1_loss/weighted_loss/MulMulloss/dense_1_loss/Mean%loss/dense_1_loss/weighted_loss/Const*
T0*#
_output_shapes
:         
c
loss/dense_1_loss/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
}
loss/dense_1_loss/SumSum#loss/dense_1_loss/weighted_loss/Mulloss/dense_1_loss/Const_2*
T0*
_output_shapes
: 
l
loss/dense_1_loss/num_elementsSize#loss/dense_1_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
{
#loss/dense_1_loss/num_elements/CastCastloss/dense_1_loss/num_elements*

DstT0*

SrcT0*
_output_shapes
: 
\
loss/dense_1_loss/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
q
loss/dense_1_loss/Sum_1Sumloss/dense_1_loss/Sumloss/dense_1_loss/Const_3*
T0*
_output_shapes
: 
В
loss/dense_1_loss/valueDivNoNanloss/dense_1_loss/Sum_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
U
loss/mulMul
loss/mul/xloss/dense_1_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
value	B	 R 
u
iterVarHandleOp*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
m
*training/RMSprop/gradients/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
s
.training/RMSprop/gradients/gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  А?
о
)training/RMSprop/gradients/gradients/FillFill*training/RMSprop/gradients/gradients/Shape.training/RMSprop/gradients/gradients/grad_ys_0*
T0*
_output_shapes
: 
в
6training/RMSprop/gradients/gradients/loss/mul_grad/MulMul)training/RMSprop/gradients/gradients/Fillloss/dense_1_loss/value*
T0*
_output_shapes
: 
Ч
8training/RMSprop/gradients/gradients/loss/mul_grad/Mul_1Mul)training/RMSprop/gradients/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
К
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
М
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
╕
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/ShapeItraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Shape_1*2
_output_shapes 
:         :         
╪
Ltraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nanDivNoNan8training/RMSprop/gradients/gradients/loss/mul_grad/Mul_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
Ф
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/SumSumLtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nanWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
Е
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/ReshapeReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/SumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Shape*
T0*
_output_shapes
: 
Ж
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/NegNegloss/dense_1_loss/Sum_1*
T0*
_output_shapes
: 
ч
Ntraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_1DivNoNanEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Neg#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
Ё
Ntraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_2DivNoNanNtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
ў
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/mulMul8training/RMSprop/gradients/gradients/loss/mul_grad/Mul_1Ntraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
С
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Sum_1SumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/mulYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 
Л
Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Sum_1Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/Shape_1*
T0*
_output_shapes
: 
Т
Otraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
С
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/ReshapeReshapeItraining/RMSprop/gradients/gradients/loss/dense_1_loss/value_grad/ReshapeOtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 
К
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
dtype0*
valueB 
Г
Ftraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/TileTileItraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/ReshapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/Const*
T0*
_output_shapes
: 
Ч
Mtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
О
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/ReshapeReshapeFtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_1_grad/TileMtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:
Ш
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/ShapeShape#loss/dense_1_loss/weighted_loss/Mul*
T0*
_output_shapes
:
К
Dtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/TileTileGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/ReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/Shape*
T0*#
_output_shapes
:         
Щ
Straining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ShapeShapeloss/dense_1_loss/Mean*
T0*
_output_shapes
:
и
Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1Shape%loss/dense_1_loss/weighted_loss/Const*
T0*
_output_shapes
: 
▄
ctraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsStraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ShapeUtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:         :         
є
Qtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/MulMulDtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/Tile%loss/dense_1_loss/weighted_loss/Const*
T0*#
_output_shapes
:         
│
Qtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/SumSumQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mulctraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
╢
Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ReshapeReshapeQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/SumStraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape*
T0*#
_output_shapes
:         
ц
Straining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul_1Mulloss/dense_1_loss/MeanDtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
╣
Straining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum_1SumStraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Mul_1etraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
п
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Reshape_1ReshapeStraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Sum_1Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/Shape_1*
T0*
_output_shapes
: 
Л
Ftraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ShapeShapeloss/dense_1_loss/Neg*
T0*
_output_shapes
:
т
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/SizeConst*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
║
Dtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/addAddV2(loss/dense_1_loss/Mean/reduction_indicesEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: 
┘
Dtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/modFloorModDtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/addEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: 
ц
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape_1Const*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: *
dtype0*
valueB 
щ
Ltraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/range/startConst*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: *
dtype0*
value	B : 
щ
Ltraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/range/deltaConst*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
й
Ftraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/rangeRangeLtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/range/startEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/SizeLtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/range/delta*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
:
ш
Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Fill/valueConst*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
р
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/FillFillHtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape_1Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Fill/value*
T0*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
: 
Е
Ntraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/DynamicStitchDynamicStitchFtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/rangeDtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/modFtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ShapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Fill*
N*
T0*Y
_classO
MKloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
_output_shapes
:
╡
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ReshapeReshapeUtraining/RMSprop/gradients/gradients/loss/dense_1_loss/weighted_loss/Mul_grad/ReshapeNtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch*
T0*0
_output_shapes
:                  
и
Ltraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/BroadcastToBroadcastToHtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ReshapeFtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape*
T0*0
_output_shapes
:                  
Н
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape_2Shapeloss/dense_1_loss/Neg*
T0*
_output_shapes
:
О
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape_3Shapeloss/dense_1_loss/Mean*
T0*
_output_shapes
:
Р
Ftraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
А
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ProdProdHtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape_2Ftraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Const*
T0*
_output_shapes
: 
Т
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Д
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Prod_1ProdHtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Shape_3Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Const_1*
T0*
_output_shapes
: 
М
Jtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
Й
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/MaximumMaximumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Prod_1Jtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
З
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/floordivFloorDivEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/ProdHtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
╚
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/CastCastItraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
г
Htraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/truedivRealDivLtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/BroadcastToEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/Cast*
T0*0
_output_shapes
:                  
╧
Ctraining/RMSprop/gradients/gradients/loss/dense_1_loss/Neg_grad/NegNegHtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Mean_grad/truediv*
T0*0
_output_shapes
:                  
М
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/ShapeShapeloss/dense_1_loss/mul*
T0*
_output_shapes
:
Р
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Shape_1Shapeloss/dense_1_loss/mul_1*
T0*
_output_shapes
:
╕
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/ShapeItraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Shape_1*2
_output_shapes 
:         :         
Н
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/SumSumCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Neg_grad/NegWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Я
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/ReshapeReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/SumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Shape*
T0*0
_output_shapes
:                  
С
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Sum_1SumCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Neg_grad/NegYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
е
Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Sum_1Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Shape_1*
T0*0
_output_shapes
:                  
Г
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/ShapeShapedense_1_target*
T0*
_output_shapes
:
М
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Shape_1Shapeloss/dense_1_loss/Log*
T0*
_output_shapes
:
▓
Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/ShapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Shape_1*2
_output_shapes 
:         :         
ч
Ctraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/MulMulItraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Reshapeloss/dense_1_loss/Log*
T0*0
_output_shapes
:                  
Й
Ctraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/SumSumCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/MulUtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/ReshapeReshapeCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/SumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Shape*
T0*0
_output_shapes
:                  
т
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Mul_1Muldense_1_targetItraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Reshape*
T0*0
_output_shapes
:                  
П
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Sum_1SumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Mul_1Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ц
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Reshape_1ReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Sum_1Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Shape_1*
T0*'
_output_shapes
:         
О
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/ShapeShapeloss/dense_1_loss/sub_1*
T0*
_output_shapes
:
Р
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Shape_1Shapeloss/dense_1_loss/Log_1*
T0*
_output_shapes
:
╕
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/ShapeItraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Shape_1*2
_output_shapes 
:         :         
э
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/MulMulKtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Reshape_1loss/dense_1_loss/Log_1*
T0*0
_output_shapes
:                  
П
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/SumSumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/MulWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Я
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/ReshapeReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/SumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Shape*
T0*0
_output_shapes
:                  
я
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Mul_1Mulloss/dense_1_loss/sub_1Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_2_grad/Reshape_1*
T0*0
_output_shapes
:                  
Х
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Sum_1SumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Mul_1Ytraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ь
Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Sum_1Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Shape_1*
T0*'
_output_shapes
:         
э
Jtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_grad/Reciprocal
Reciprocalloss/dense_1_loss/addJ^training/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Reshape_1*
T0*'
_output_shapes
:         
У
Ctraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_grad/mulMulItraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_grad/Reshape_1Jtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:         
є
Ltraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_1_grad/Reciprocal
Reciprocalloss/dense_1_loss/add_1L^training/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Reshape_1*
T0*'
_output_shapes
:         
Щ
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_1_grad/mulMulKtraining/RMSprop/gradients/gradients/loss/dense_1_loss/mul_1_grad/Reshape_1Ltraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_1_grad/Reciprocal*
T0*'
_output_shapes
:         
Ф
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/ShapeShapeloss/dense_1_loss/clip_by_value*
T0*
_output_shapes
:
М
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Shape_1Shapeloss/dense_1_loss/add/y*
T0*
_output_shapes
: 
▓
Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/ShapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Shape_1*2
_output_shapes 
:         :         
Й
Ctraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/SumSumCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_grad/mulUtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Р
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/ReshapeReshapeCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/SumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Shape*
T0*'
_output_shapes
:         
Н
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Sum_1SumCtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_grad/mulWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Е
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Reshape_1ReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Sum_1Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Shape_1*
T0*
_output_shapes
: 
О
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/ShapeShapeloss/dense_1_loss/sub_2*
T0*
_output_shapes
:
Р
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Shape_1Shapeloss/dense_1_loss/add_1/y*
T0*
_output_shapes
: 
╕
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/ShapeItraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Shape_1*2
_output_shapes 
:         :         
П
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/SumSumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_1_grad/mulWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Ц
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/ReshapeReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/SumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Shape*
T0*'
_output_shapes
:         
У
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Sum_1SumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/Log_1_grad/mulYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Л
Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Sum_1Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Shape_1*
T0*
_output_shapes
: 
О
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/ShapeShapeloss/dense_1_loss/sub_2/x*
T0*
_output_shapes
: 
Ш
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Shape_1Shapeloss/dense_1_loss/clip_by_value*
T0*
_output_shapes
:
╕
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/ShapeItraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Shape_1*2
_output_shapes 
:         :         
У
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/SumSumItraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/ReshapeWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Е
Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/ReshapeReshapeEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/SumGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Shape*
T0*
_output_shapes
: 
╔
Etraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/NegNegItraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_1_grad/Reshape*
T0*'
_output_shapes
:         
У
Gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Sum_1SumEtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/NegYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ь
Ktraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Sum_1Itraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Shape_1*
T0*'
_output_shapes
:         
▐
)training/RMSprop/gradients/gradients/AddNAddNGtraining/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/ReshapeKtraining/RMSprop/gradients/gradients/loss/dense_1_loss/sub_2_grad/Reshape_1*
N*
T0*Z
_classP
NLloc:@training/RMSprop/gradients/gradients/loss/dense_1_loss/add_grad/Reshape*'
_output_shapes
:         
ж
Otraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeShape'loss/dense_1_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
Ф
Qtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
к
Qtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Shape)training/RMSprop/gradients/gradients/AddN*
T0*
_output_shapes
:
Ъ
Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
│
Otraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/zerosFillQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:         
▄
Vtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const_1*
T0*'
_output_shapes
:         
╨
_training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsOtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:         :         
ф
Rtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/SelectV2SelectV2Vtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqual)training/RMSprop/gradients/gradients/AddNOtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:         
м
Mtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/SumSumRtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/SelectV2_training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
о
Qtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeReshapeMtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/SumOtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Shape*
T0*'
_output_shapes
:         
ц
Ttraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/SelectV2_1SelectV2Vtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualOtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/zeros)training/RMSprop/gradients/gradients/AddN*
T0*'
_output_shapes
:         
▓
Otraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1SumTtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/SelectV2_1atraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
г
Straining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape_1ReshapeOtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1Qtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: 
Ц
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeShapedense_1/Sigmoid*
T0*
_output_shapes
:
Ь
Ytraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
┌
Ytraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2ShapeQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*
T0*
_output_shapes
:
в
]training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
╦
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosFillYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2]training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:         
┬
[training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:         
ш
gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:         :         
б
Ztraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectV2SelectV2[training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:         
─
Utraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumSumZtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectV2gtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
╞
Ytraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ReshapeReshapeUtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape*
T0*'
_output_shapes
:         
г
\training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectV2_1SelectV2[training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosQtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:         
╩
Wtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1Sum\training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectV2_1itraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
╗
[training/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeWtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1Ytraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: 
Є
Etraining/RMSprop/gradients/gradients/dense_1/Sigmoid_grad/SigmoidGradSigmoidGraddense_1/SigmoidYtraining/RMSprop/gradients/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape*
T0*'
_output_shapes
:         
└
Etraining/RMSprop/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradEtraining/RMSprop/gradients/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes
:
ї
?training/RMSprop/gradients/gradients/dense_1/MatMul_grad/MatMulMatMulEtraining/RMSprop/gradients/gradients/dense_1/Sigmoid_grad/SigmoidGraddense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А*
transpose_b(
█
Atraining/RMSprop/gradients/gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/ReluEtraining/RMSprop/gradients/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes
:	А*
transpose_a(
╔
=training/RMSprop/gradients/gradients/dense/Relu_grad/ReluGradReluGrad?training/RMSprop/gradients/gradients/dense_1/MatMul_grad/MatMul
dense/Relu*
T0*(
_output_shapes
:         А
╖
Ctraining/RMSprop/gradients/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=training/RMSprop/gradients/gradients/dense/Relu_grad/ReluGrad*
T0*
_output_shapes	
:А
ъ
=training/RMSprop/gradients/gradients/dense/MatMul_grad/MatMulMatMul=training/RMSprop/gradients/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*
T0*)
_output_shapes
:         └Р*
transpose_b(
╪
?training/RMSprop/gradients/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/Reshape=training/RMSprop/gradients/gradients/dense/Relu_grad/ReluGrad*
T0*!
_output_shapes
:└РА*
transpose_a(
Ж
?training/RMSprop/gradients/gradients/flatten/Reshape_grad/ShapeShapemax_pooling2d_2/MaxPool*
T0*
_output_shapes
:
Ж
Atraining/RMSprop/gradients/gradients/flatten/Reshape_grad/ReshapeReshape=training/RMSprop/gradients/gradients/dense/MatMul_grad/MatMul?training/RMSprop/gradients/gradients/flatten/Reshape_grad/Shape*
T0*/
_output_shapes
:         @
┤
Mtraining/RMSprop/gradients/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_2/Relumax_pooling2d_2/MaxPoolAtraining/RMSprop/gradients/gradients/flatten/Reshape_grad/Reshape*/
_output_shapes
:         ""@*
ksize
*
paddingVALID*
strides

ф
@training/RMSprop/gradients/gradients/conv2d_2/Relu_grad/ReluGradReluGradMtraining/RMSprop/gradients/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_2/Relu*
T0*/
_output_shapes
:         ""@
╝
Ftraining/RMSprop/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad@training/RMSprop/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
_output_shapes
:@
╖
@training/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
ы
Mtraining/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput@training/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOp@training/RMSprop/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*/
_output_shapes
:         $$ *
paddingVALID*
strides

▀
Ntraining/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPoolBtraining/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/ShapeN:1@training/RMSprop/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*&
_output_shapes
: @*
paddingVALID*
strides

└
Mtraining/RMSprop/gradients/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d_1/MaxPoolMtraining/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:         HH *
ksize
*
paddingVALID*
strides

ф
@training/RMSprop/gradients/gradients/conv2d_1/Relu_grad/ReluGradReluGradMtraining/RMSprop/gradients/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_1/Relu*
T0*/
_output_shapes
:         HH 
╝
Ftraining/RMSprop/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad@training/RMSprop/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
_output_shapes
: 
╡
@training/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
ы
Mtraining/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput@training/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOp@training/RMSprop/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*/
_output_shapes
:         JJ*
paddingVALID*
strides

▌
Ntraining/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPoolBtraining/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/ShapeN:1@training/RMSprop/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*&
_output_shapes
: *
paddingVALID*
strides

╝
Ktraining/RMSprop/gradients/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d/Relumax_pooling2d/MaxPoolMtraining/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*1
_output_shapes
:         ФФ*
ksize
*
paddingVALID*
strides

р
>training/RMSprop/gradients/gradients/conv2d/Relu_grad/ReluGradReluGradKtraining/RMSprop/gradients/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d/Relu*
T0*1
_output_shapes
:         ФФ
╕
Dtraining/RMSprop/gradients/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad>training/RMSprop/gradients/gradients/conv2d/Relu_grad/ReluGrad*
T0*
_output_shapes
:
и
>training/RMSprop/gradients/gradients/conv2d/Conv2D_grad/ShapeNShapeNconv2d_inputconv2d/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::
х
Ktraining/RMSprop/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput>training/RMSprop/gradients/gradients/conv2d/Conv2D_grad/ShapeNconv2d/Conv2D/ReadVariableOp>training/RMSprop/gradients/gradients/conv2d/Relu_grad/ReluGrad*
T0*1
_output_shapes
:         ЦЦ*
paddingVALID*
strides

╬
Ltraining/RMSprop/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_input@training/RMSprop/gradients/gradients/conv2d/Conv2D_grad/ShapeN:1>training/RMSprop/gradients/gradients/conv2d/Relu_grad/ReluGrad*
T0*&
_output_shapes
:*
paddingVALID*
strides

а
0training/RMSprop/decay/Initializer/initial_valueConst*)
_class
loc:@training/RMSprop/decay*
_output_shapes
: *
dtype0*
valueB
 *    
л
training/RMSprop/decayVarHandleOp*)
_class
loc:@training/RMSprop/decay*
_output_shapes
: *
dtype0*
shape: *'
shared_nametraining/RMSprop/decay
}
7training/RMSprop/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/decay*
_output_shapes
: 
И
training/RMSprop/decay/AssignAssignVariableOptraining/RMSprop/decay0training/RMSprop/decay/Initializer/initial_value*
dtype0
y
*training/RMSprop/decay/Read/ReadVariableOpReadVariableOptraining/RMSprop/decay*
_output_shapes
: *
dtype0
░
8training/RMSprop/learning_rate/Initializer/initial_valueConst*1
_class'
%#loc:@training/RMSprop/learning_rate*
_output_shapes
: *
dtype0*
valueB
 *oГ:
├
training/RMSprop/learning_rateVarHandleOp*1
_class'
%#loc:@training/RMSprop/learning_rate*
_output_shapes
: *
dtype0*
shape: */
shared_name training/RMSprop/learning_rate
Н
?training/RMSprop/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/learning_rate*
_output_shapes
: 
а
%training/RMSprop/learning_rate/AssignAssignVariableOptraining/RMSprop/learning_rate8training/RMSprop/learning_rate/Initializer/initial_value*
dtype0
Й
2training/RMSprop/learning_rate/Read/ReadVariableOpReadVariableOptraining/RMSprop/learning_rate*
_output_shapes
: *
dtype0
ж
3training/RMSprop/momentum/Initializer/initial_valueConst*,
_class"
 loc:@training/RMSprop/momentum*
_output_shapes
: *
dtype0*
valueB
 *    
┤
training/RMSprop/momentumVarHandleOp*,
_class"
 loc:@training/RMSprop/momentum*
_output_shapes
: *
dtype0*
shape: **
shared_nametraining/RMSprop/momentum
Г
:training/RMSprop/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/momentum*
_output_shapes
: 
С
 training/RMSprop/momentum/AssignAssignVariableOptraining/RMSprop/momentum3training/RMSprop/momentum/Initializer/initial_value*
dtype0

-training/RMSprop/momentum/Read/ReadVariableOpReadVariableOptraining/RMSprop/momentum*
_output_shapes
: *
dtype0
Ь
.training/RMSprop/rho/Initializer/initial_valueConst*'
_class
loc:@training/RMSprop/rho*
_output_shapes
: *
dtype0*
valueB
 *fff?
е
training/RMSprop/rhoVarHandleOp*'
_class
loc:@training/RMSprop/rho*
_output_shapes
: *
dtype0*
shape: *%
shared_nametraining/RMSprop/rho
y
5training/RMSprop/rho/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/rho*
_output_shapes
: 
В
training/RMSprop/rho/AssignAssignVariableOptraining/RMSprop/rho.training/RMSprop/rho/Initializer/initial_value*
dtype0
u
(training/RMSprop/rho/Read/ReadVariableOpReadVariableOptraining/RMSprop/rho*
_output_shapes
: *
dtype0
╗
4training/RMSprop/conv2d/kernel/rms/Initializer/zerosConst* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0*%
valueB*    
╩
"training/RMSprop/conv2d/kernel/rmsVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"training/RMSprop/conv2d/kernel/rms
╖
Ctraining/RMSprop/conv2d/kernel/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp"training/RMSprop/conv2d/kernel/rms* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
д
)training/RMSprop/conv2d/kernel/rms/AssignAssignVariableOp"training/RMSprop/conv2d/kernel/rms4training/RMSprop/conv2d/kernel/rms/Initializer/zeros*
dtype0
├
6training/RMSprop/conv2d/kernel/rms/Read/ReadVariableOpReadVariableOp"training/RMSprop/conv2d/kernel/rms* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
Я
2training/RMSprop/conv2d/bias/rms/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
╕
 training/RMSprop/conv2d/bias/rmsVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*1
shared_name" training/RMSprop/conv2d/bias/rms
▒
Atraining/RMSprop/conv2d/bias/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp training/RMSprop/conv2d/bias/rms*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ю
'training/RMSprop/conv2d/bias/rms/AssignAssignVariableOp training/RMSprop/conv2d/bias/rms2training/RMSprop/conv2d/bias/rms/Initializer/zeros*
dtype0
▒
4training/RMSprop/conv2d/bias/rms/Read/ReadVariableOpReadVariableOp training/RMSprop/conv2d/bias/rms*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0
├
Ftraining/RMSprop/conv2d_1/kernel/rms/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"             
е
<training/RMSprop/conv2d_1/kernel/rms/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Щ
6training/RMSprop/conv2d_1/kernel/rms/Initializer/zerosFillFtraining/RMSprop/conv2d_1/kernel/rms/Initializer/zeros/shape_as_tensor<training/RMSprop/conv2d_1/kernel/rms/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
╨
$training/RMSprop/conv2d_1/kernel/rmsVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$training/RMSprop/conv2d_1/kernel/rms
╜
Etraining/RMSprop/conv2d_1/kernel/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/RMSprop/conv2d_1/kernel/rms*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
к
+training/RMSprop/conv2d_1/kernel/rms/AssignAssignVariableOp$training/RMSprop/conv2d_1/kernel/rms6training/RMSprop/conv2d_1/kernel/rms/Initializer/zeros*
dtype0
╔
8training/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_1/kernel/rms*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
г
4training/RMSprop/conv2d_1/bias/rms/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
valueB *    
╛
"training/RMSprop/conv2d_1/bias/rmsVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"training/RMSprop/conv2d_1/bias/rms
╖
Ctraining/RMSprop/conv2d_1/bias/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp"training/RMSprop/conv2d_1/bias/rms* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
д
)training/RMSprop/conv2d_1/bias/rms/AssignAssignVariableOp"training/RMSprop/conv2d_1/bias/rms4training/RMSprop/conv2d_1/bias/rms/Initializer/zeros*
dtype0
╖
6training/RMSprop/conv2d_1/bias/rms/Read/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_1/bias/rms* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0
├
Ftraining/RMSprop/conv2d_2/kernel/rms/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
е
<training/RMSprop/conv2d_2/kernel/rms/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Щ
6training/RMSprop/conv2d_2/kernel/rms/Initializer/zerosFillFtraining/RMSprop/conv2d_2/kernel/rms/Initializer/zeros/shape_as_tensor<training/RMSprop/conv2d_2/kernel/rms/Initializer/zeros/Const*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
╨
$training/RMSprop/conv2d_2/kernel/rmsVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape: @*5
shared_name&$training/RMSprop/conv2d_2/kernel/rms
╜
Etraining/RMSprop/conv2d_2/kernel/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp$training/RMSprop/conv2d_2/kernel/rms*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
к
+training/RMSprop/conv2d_2/kernel/rms/AssignAssignVariableOp$training/RMSprop/conv2d_2/kernel/rms6training/RMSprop/conv2d_2/kernel/rms/Initializer/zeros*
dtype0
╔
8training/RMSprop/conv2d_2/kernel/rms/Read/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_2/kernel/rms*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
г
4training/RMSprop/conv2d_2/bias/rms/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0*
valueB@*    
╛
"training/RMSprop/conv2d_2/bias/rmsVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"training/RMSprop/conv2d_2/bias/rms
╖
Ctraining/RMSprop/conv2d_2/bias/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp"training/RMSprop/conv2d_2/bias/rms* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
д
)training/RMSprop/conv2d_2/bias/rms/AssignAssignVariableOp"training/RMSprop/conv2d_2/bias/rms4training/RMSprop/conv2d_2/bias/rms/Initializer/zeros*
dtype0
╖
6training/RMSprop/conv2d_2/bias/rms/Read/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_2/bias/rms* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0
╡
Ctraining/RMSprop/dense/kernel/rms/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"@H     
Я
9training/RMSprop/dense/kernel/rms/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
И
3training/RMSprop/dense/kernel/rms/Initializer/zerosFillCtraining/RMSprop/dense/kernel/rms/Initializer/zeros/shape_as_tensor9training/RMSprop/dense/kernel/rms/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
┬
!training/RMSprop/dense/kernel/rmsVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:└РА*2
shared_name#!training/RMSprop/dense/kernel/rms
┤
Btraining/RMSprop/dense/kernel/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp!training/RMSprop/dense/kernel/rms*
_class
loc:@dense/kernel*
_output_shapes
: 
б
(training/RMSprop/dense/kernel/rms/AssignAssignVariableOp!training/RMSprop/dense/kernel/rms3training/RMSprop/dense/kernel/rms/Initializer/zeros*
dtype0
╗
5training/RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOp!training/RMSprop/dense/kernel/rms*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
Я
1training/RMSprop/dense/bias/rms/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0*
valueBА*    
╢
training/RMSprop/dense/bias/rmsVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!training/RMSprop/dense/bias/rms
о
@training/RMSprop/dense/bias/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/dense/bias/rms*
_class
loc:@dense/bias*
_output_shapes
: 
Ы
&training/RMSprop/dense/bias/rms/AssignAssignVariableOptraining/RMSprop/dense/bias/rms1training/RMSprop/dense/bias/rms/Initializer/zeros*
dtype0
п
3training/RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOptraining/RMSprop/dense/bias/rms*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0
п
5training/RMSprop/dense_1/kernel/rms/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0*
valueB	А*    
╞
#training/RMSprop/dense_1/kernel/rmsVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	А*4
shared_name%#training/RMSprop/dense_1/kernel/rms
║
Dtraining/RMSprop/dense_1/kernel/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp#training/RMSprop/dense_1/kernel/rms*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
з
*training/RMSprop/dense_1/kernel/rms/AssignAssignVariableOp#training/RMSprop/dense_1/kernel/rms5training/RMSprop/dense_1/kernel/rms/Initializer/zeros*
dtype0
┐
7training/RMSprop/dense_1/kernel/rms/Read/ReadVariableOpReadVariableOp#training/RMSprop/dense_1/kernel/rms*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
б
3training/RMSprop/dense_1/bias/rms/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
╗
!training/RMSprop/dense_1/bias/rmsVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training/RMSprop/dense_1/bias/rms
┤
Btraining/RMSprop/dense_1/bias/rms/IsInitialized/VarIsInitializedOpVarIsInitializedOp!training/RMSprop/dense_1/bias/rms*
_class
loc:@dense_1/bias*
_output_shapes
: 
б
(training/RMSprop/dense_1/bias/rms/AssignAssignVariableOp!training/RMSprop/dense_1/bias/rms3training/RMSprop/dense_1/bias/rms/Initializer/zeros*
dtype0
┤
5training/RMSprop/dense_1/bias/rms/Read/ReadVariableOpReadVariableOp!training/RMSprop/dense_1/bias/rms*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0

(training/RMSprop/Identity/ReadVariableOpReadVariableOptraining/RMSprop/learning_rate*
_output_shapes
: *
dtype0
p
training/RMSprop/IdentityIdentity(training/RMSprop/Identity/ReadVariableOp*
T0*
_output_shapes
: 
w
*training/RMSprop/Identity_1/ReadVariableOpReadVariableOptraining/RMSprop/rho*
_output_shapes
: *
dtype0
t
training/RMSprop/Identity_1Identity*training/RMSprop/Identity_1/ReadVariableOp*
T0*
_output_shapes
: 
W
training/RMSprop/NegNegtraining/RMSprop/Identity*
T0*
_output_shapes
: 
[
training/RMSprop/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
|
*training/RMSprop/Identity_2/ReadVariableOpReadVariableOptraining/RMSprop/momentum*
_output_shapes
: *
dtype0
t
training/RMSprop/Identity_2Identity*training/RMSprop/Identity_2/ReadVariableOp*
T0*
_output_shapes
: 
[
training/RMSprop/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
q
training/RMSprop/subSubtraining/RMSprop/sub/xtraining/RMSprop/Identity_1*
T0*
_output_shapes
: 
л
@training/RMSprop/RMSprop/update_conv2d/kernel/mul/ReadVariableOpReadVariableOp"training/RMSprop/conv2d/kernel/rms*&
_output_shapes
:*
dtype0
ъ
1training/RMSprop/RMSprop/update_conv2d/kernel/mulMultraining/RMSprop/Identity_1@training/RMSprop/RMSprop/update_conv2d/kernel/mul/ReadVariableOp*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▀
4training/RMSprop/RMSprop/update_conv2d/kernel/SquareSquareLtraining/RMSprop/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
┘
3training/RMSprop/RMSprop/update_conv2d/kernel/mul_1Multraining/RMSprop/sub4training/RMSprop/RMSprop/update_conv2d/kernel/Square*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
ї
1training/RMSprop/RMSprop/update_conv2d/kernel/addAddV21training/RMSprop/RMSprop/update_conv2d/kernel/mul3training/RMSprop/RMSprop/update_conv2d/kernel/mul_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
╪
>training/RMSprop/RMSprop/update_conv2d/kernel/AssignVariableOpAssignVariableOp"training/RMSprop/conv2d/kernel/rms1training/RMSprop/RMSprop/update_conv2d/kernel/add* 
_class
loc:@conv2d/kernel*
dtype0
К
<training/RMSprop/RMSprop/update_conv2d/kernel/ReadVariableOpReadVariableOp"training/RMSprop/conv2d/kernel/rms?^training/RMSprop/RMSprop/update_conv2d/kernel/AssignVariableOp* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
Ў
3training/RMSprop/RMSprop/update_conv2d/kernel/mul_2Multraining/RMSprop/IdentityLtraining/RMSprop/gradients/gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
П
Atraining/RMSprop/RMSprop/update_conv2d/kernel/Sqrt/ReadVariableOpReadVariableOp"training/RMSprop/conv2d/kernel/rms?^training/RMSprop/RMSprop/update_conv2d/kernel/AssignVariableOp* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
╨
2training/RMSprop/RMSprop/update_conv2d/kernel/SqrtSqrtAtraining/RMSprop/RMSprop/update_conv2d/kernel/Sqrt/ReadVariableOp*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
█
3training/RMSprop/RMSprop/update_conv2d/kernel/add_1AddV22training/RMSprop/RMSprop/update_conv2d/kernel/Sqrttraining/RMSprop/Const*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
¤
5training/RMSprop/RMSprop/update_conv2d/kernel/truedivRealDiv3training/RMSprop/RMSprop/update_conv2d/kernel/mul_23training/RMSprop/RMSprop/update_conv2d/kernel/add_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
Ф
>training/RMSprop/RMSprop/update_conv2d/kernel/ReadVariableOp_1ReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
В
1training/RMSprop/RMSprop/update_conv2d/kernel/subSub>training/RMSprop/RMSprop/update_conv2d/kernel/ReadVariableOp_15training/RMSprop/RMSprop/update_conv2d/kernel/truediv*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
┼
@training/RMSprop/RMSprop/update_conv2d/kernel/AssignVariableOp_1AssignVariableOpconv2d/kernel1training/RMSprop/RMSprop/update_conv2d/kernel/sub* 
_class
loc:@conv2d/kernel*
dtype0
∙
>training/RMSprop/RMSprop/update_conv2d/kernel/ReadVariableOp_2ReadVariableOpconv2d/kernelA^training/RMSprop/RMSprop/update_conv2d/kernel/AssignVariableOp_1* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
Ы
>training/RMSprop/RMSprop/update_conv2d/bias/mul/ReadVariableOpReadVariableOp training/RMSprop/conv2d/bias/rms*
_output_shapes
:*
dtype0
╪
/training/RMSprop/RMSprop/update_conv2d/bias/mulMultraining/RMSprop/Identity_1>training/RMSprop/RMSprop/update_conv2d/bias/mul/ReadVariableOp*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╟
2training/RMSprop/RMSprop/update_conv2d/bias/SquareSquareDtraining/RMSprop/gradients/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╟
1training/RMSprop/RMSprop/update_conv2d/bias/mul_1Multraining/RMSprop/sub2training/RMSprop/RMSprop/update_conv2d/bias/Square*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
с
/training/RMSprop/RMSprop/update_conv2d/bias/addAddV2/training/RMSprop/RMSprop/update_conv2d/bias/mul1training/RMSprop/RMSprop/update_conv2d/bias/mul_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╨
<training/RMSprop/RMSprop/update_conv2d/bias/AssignVariableOpAssignVariableOp training/RMSprop/conv2d/bias/rms/training/RMSprop/RMSprop/update_conv2d/bias/add*
_class
loc:@conv2d/bias*
dtype0
Ў
:training/RMSprop/RMSprop/update_conv2d/bias/ReadVariableOpReadVariableOp training/RMSprop/conv2d/bias/rms=^training/RMSprop/RMSprop/update_conv2d/bias/AssignVariableOp*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0
▐
1training/RMSprop/RMSprop/update_conv2d/bias/mul_2Multraining/RMSprop/IdentityDtraining/RMSprop/gradients/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
√
?training/RMSprop/RMSprop/update_conv2d/bias/Sqrt/ReadVariableOpReadVariableOp training/RMSprop/conv2d/bias/rms=^training/RMSprop/RMSprop/update_conv2d/bias/AssignVariableOp*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0
╛
0training/RMSprop/RMSprop/update_conv2d/bias/SqrtSqrt?training/RMSprop/RMSprop/update_conv2d/bias/Sqrt/ReadVariableOp*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╔
1training/RMSprop/RMSprop/update_conv2d/bias/add_1AddV20training/RMSprop/RMSprop/update_conv2d/bias/Sqrttraining/RMSprop/Const*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
щ
3training/RMSprop/RMSprop/update_conv2d/bias/truedivRealDiv1training/RMSprop/RMSprop/update_conv2d/bias/mul_21training/RMSprop/RMSprop/update_conv2d/bias/add_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
Д
<training/RMSprop/RMSprop/update_conv2d/bias/ReadVariableOp_1ReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
ю
/training/RMSprop/RMSprop/update_conv2d/bias/subSub<training/RMSprop/RMSprop/update_conv2d/bias/ReadVariableOp_13training/RMSprop/RMSprop/update_conv2d/bias/truediv*
T0*
_class
loc:@conv2d/bias*
_output_shapes
:
╜
>training/RMSprop/RMSprop/update_conv2d/bias/AssignVariableOp_1AssignVariableOpconv2d/bias/training/RMSprop/RMSprop/update_conv2d/bias/sub*
_class
loc:@conv2d/bias*
dtype0
х
<training/RMSprop/RMSprop/update_conv2d/bias/ReadVariableOp_2ReadVariableOpconv2d/bias?^training/RMSprop/RMSprop/update_conv2d/bias/AssignVariableOp_1*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0
п
Btraining/RMSprop/RMSprop/update_conv2d_1/kernel/mul/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_1/kernel/rms*&
_output_shapes
: *
dtype0
Ё
3training/RMSprop/RMSprop/update_conv2d_1/kernel/mulMultraining/RMSprop/Identity_1Btraining/RMSprop/RMSprop/update_conv2d_1/kernel/mul/ReadVariableOp*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
х
6training/RMSprop/RMSprop/update_conv2d_1/kernel/SquareSquareNtraining/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
▀
5training/RMSprop/RMSprop/update_conv2d_1/kernel/mul_1Multraining/RMSprop/sub6training/RMSprop/RMSprop/update_conv2d_1/kernel/Square*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
¤
3training/RMSprop/RMSprop/update_conv2d_1/kernel/addAddV23training/RMSprop/RMSprop/update_conv2d_1/kernel/mul5training/RMSprop/RMSprop/update_conv2d_1/kernel/mul_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
р
@training/RMSprop/RMSprop/update_conv2d_1/kernel/AssignVariableOpAssignVariableOp$training/RMSprop/conv2d_1/kernel/rms3training/RMSprop/RMSprop/update_conv2d_1/kernel/add*"
_class
loc:@conv2d_1/kernel*
dtype0
Т
>training/RMSprop/RMSprop/update_conv2d_1/kernel/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_1/kernel/rmsA^training/RMSprop/RMSprop/update_conv2d_1/kernel/AssignVariableOp*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
№
5training/RMSprop/RMSprop/update_conv2d_1/kernel/mul_2Multraining/RMSprop/IdentityNtraining/RMSprop/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
Ч
Ctraining/RMSprop/RMSprop/update_conv2d_1/kernel/Sqrt/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_1/kernel/rmsA^training/RMSprop/RMSprop/update_conv2d_1/kernel/AssignVariableOp*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
╓
4training/RMSprop/RMSprop/update_conv2d_1/kernel/SqrtSqrtCtraining/RMSprop/RMSprop/update_conv2d_1/kernel/Sqrt/ReadVariableOp*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
с
5training/RMSprop/RMSprop/update_conv2d_1/kernel/add_1AddV24training/RMSprop/RMSprop/update_conv2d_1/kernel/Sqrttraining/RMSprop/Const*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
Е
7training/RMSprop/RMSprop/update_conv2d_1/kernel/truedivRealDiv5training/RMSprop/RMSprop/update_conv2d_1/kernel/mul_25training/RMSprop/RMSprop/update_conv2d_1/kernel/add_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
Ш
@training/RMSprop/RMSprop/update_conv2d_1/kernel/ReadVariableOp_1ReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
К
3training/RMSprop/RMSprop/update_conv2d_1/kernel/subSub@training/RMSprop/RMSprop/update_conv2d_1/kernel/ReadVariableOp_17training/RMSprop/RMSprop/update_conv2d_1/kernel/truediv*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
═
Btraining/RMSprop/RMSprop/update_conv2d_1/kernel/AssignVariableOp_1AssignVariableOpconv2d_1/kernel3training/RMSprop/RMSprop/update_conv2d_1/kernel/sub*"
_class
loc:@conv2d_1/kernel*
dtype0
Б
@training/RMSprop/RMSprop/update_conv2d_1/kernel/ReadVariableOp_2ReadVariableOpconv2d_1/kernelC^training/RMSprop/RMSprop/update_conv2d_1/kernel/AssignVariableOp_1*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
Я
@training/RMSprop/RMSprop/update_conv2d_1/bias/mul/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_1/bias/rms*
_output_shapes
: *
dtype0
▐
1training/RMSprop/RMSprop/update_conv2d_1/bias/mulMultraining/RMSprop/Identity_1@training/RMSprop/RMSprop/update_conv2d_1/bias/mul/ReadVariableOp*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
═
4training/RMSprop/RMSprop/update_conv2d_1/bias/SquareSquareFtraining/RMSprop/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
═
3training/RMSprop/RMSprop/update_conv2d_1/bias/mul_1Multraining/RMSprop/sub4training/RMSprop/RMSprop/update_conv2d_1/bias/Square*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
щ
1training/RMSprop/RMSprop/update_conv2d_1/bias/addAddV21training/RMSprop/RMSprop/update_conv2d_1/bias/mul3training/RMSprop/RMSprop/update_conv2d_1/bias/mul_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
╪
>training/RMSprop/RMSprop/update_conv2d_1/bias/AssignVariableOpAssignVariableOp"training/RMSprop/conv2d_1/bias/rms1training/RMSprop/RMSprop/update_conv2d_1/bias/add* 
_class
loc:@conv2d_1/bias*
dtype0
■
<training/RMSprop/RMSprop/update_conv2d_1/bias/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_1/bias/rms?^training/RMSprop/RMSprop/update_conv2d_1/bias/AssignVariableOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0
ф
3training/RMSprop/RMSprop/update_conv2d_1/bias/mul_2Multraining/RMSprop/IdentityFtraining/RMSprop/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
Г
Atraining/RMSprop/RMSprop/update_conv2d_1/bias/Sqrt/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_1/bias/rms?^training/RMSprop/RMSprop/update_conv2d_1/bias/AssignVariableOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0
─
2training/RMSprop/RMSprop/update_conv2d_1/bias/SqrtSqrtAtraining/RMSprop/RMSprop/update_conv2d_1/bias/Sqrt/ReadVariableOp*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
╧
3training/RMSprop/RMSprop/update_conv2d_1/bias/add_1AddV22training/RMSprop/RMSprop/update_conv2d_1/bias/Sqrttraining/RMSprop/Const*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
ё
5training/RMSprop/RMSprop/update_conv2d_1/bias/truedivRealDiv3training/RMSprop/RMSprop/update_conv2d_1/bias/mul_23training/RMSprop/RMSprop/update_conv2d_1/bias/add_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
И
>training/RMSprop/RMSprop/update_conv2d_1/bias/ReadVariableOp_1ReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
Ў
1training/RMSprop/RMSprop/update_conv2d_1/bias/subSub>training/RMSprop/RMSprop/update_conv2d_1/bias/ReadVariableOp_15training/RMSprop/RMSprop/update_conv2d_1/bias/truediv*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
┼
@training/RMSprop/RMSprop/update_conv2d_1/bias/AssignVariableOp_1AssignVariableOpconv2d_1/bias1training/RMSprop/RMSprop/update_conv2d_1/bias/sub* 
_class
loc:@conv2d_1/bias*
dtype0
э
>training/RMSprop/RMSprop/update_conv2d_1/bias/ReadVariableOp_2ReadVariableOpconv2d_1/biasA^training/RMSprop/RMSprop/update_conv2d_1/bias/AssignVariableOp_1* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0
п
Btraining/RMSprop/RMSprop/update_conv2d_2/kernel/mul/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_2/kernel/rms*&
_output_shapes
: @*
dtype0
Ё
3training/RMSprop/RMSprop/update_conv2d_2/kernel/mulMultraining/RMSprop/Identity_1Btraining/RMSprop/RMSprop/update_conv2d_2/kernel/mul/ReadVariableOp*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
х
6training/RMSprop/RMSprop/update_conv2d_2/kernel/SquareSquareNtraining/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
▀
5training/RMSprop/RMSprop/update_conv2d_2/kernel/mul_1Multraining/RMSprop/sub6training/RMSprop/RMSprop/update_conv2d_2/kernel/Square*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
¤
3training/RMSprop/RMSprop/update_conv2d_2/kernel/addAddV23training/RMSprop/RMSprop/update_conv2d_2/kernel/mul5training/RMSprop/RMSprop/update_conv2d_2/kernel/mul_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
р
@training/RMSprop/RMSprop/update_conv2d_2/kernel/AssignVariableOpAssignVariableOp$training/RMSprop/conv2d_2/kernel/rms3training/RMSprop/RMSprop/update_conv2d_2/kernel/add*"
_class
loc:@conv2d_2/kernel*
dtype0
Т
>training/RMSprop/RMSprop/update_conv2d_2/kernel/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_2/kernel/rmsA^training/RMSprop/RMSprop/update_conv2d_2/kernel/AssignVariableOp*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
№
5training/RMSprop/RMSprop/update_conv2d_2/kernel/mul_2Multraining/RMSprop/IdentityNtraining/RMSprop/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Ч
Ctraining/RMSprop/RMSprop/update_conv2d_2/kernel/Sqrt/ReadVariableOpReadVariableOp$training/RMSprop/conv2d_2/kernel/rmsA^training/RMSprop/RMSprop/update_conv2d_2/kernel/AssignVariableOp*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
╓
4training/RMSprop/RMSprop/update_conv2d_2/kernel/SqrtSqrtCtraining/RMSprop/RMSprop/update_conv2d_2/kernel/Sqrt/ReadVariableOp*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
с
5training/RMSprop/RMSprop/update_conv2d_2/kernel/add_1AddV24training/RMSprop/RMSprop/update_conv2d_2/kernel/Sqrttraining/RMSprop/Const*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Е
7training/RMSprop/RMSprop/update_conv2d_2/kernel/truedivRealDiv5training/RMSprop/RMSprop/update_conv2d_2/kernel/mul_25training/RMSprop/RMSprop/update_conv2d_2/kernel/add_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
Ш
@training/RMSprop/RMSprop/update_conv2d_2/kernel/ReadVariableOp_1ReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
К
3training/RMSprop/RMSprop/update_conv2d_2/kernel/subSub@training/RMSprop/RMSprop/update_conv2d_2/kernel/ReadVariableOp_17training/RMSprop/RMSprop/update_conv2d_2/kernel/truediv*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
═
Btraining/RMSprop/RMSprop/update_conv2d_2/kernel/AssignVariableOp_1AssignVariableOpconv2d_2/kernel3training/RMSprop/RMSprop/update_conv2d_2/kernel/sub*"
_class
loc:@conv2d_2/kernel*
dtype0
Б
@training/RMSprop/RMSprop/update_conv2d_2/kernel/ReadVariableOp_2ReadVariableOpconv2d_2/kernelC^training/RMSprop/RMSprop/update_conv2d_2/kernel/AssignVariableOp_1*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
Я
@training/RMSprop/RMSprop/update_conv2d_2/bias/mul/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_2/bias/rms*
_output_shapes
:@*
dtype0
▐
1training/RMSprop/RMSprop/update_conv2d_2/bias/mulMultraining/RMSprop/Identity_1@training/RMSprop/RMSprop/update_conv2d_2/bias/mul/ReadVariableOp*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
═
4training/RMSprop/RMSprop/update_conv2d_2/bias/SquareSquareFtraining/RMSprop/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
═
3training/RMSprop/RMSprop/update_conv2d_2/bias/mul_1Multraining/RMSprop/sub4training/RMSprop/RMSprop/update_conv2d_2/bias/Square*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
щ
1training/RMSprop/RMSprop/update_conv2d_2/bias/addAddV21training/RMSprop/RMSprop/update_conv2d_2/bias/mul3training/RMSprop/RMSprop/update_conv2d_2/bias/mul_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
╪
>training/RMSprop/RMSprop/update_conv2d_2/bias/AssignVariableOpAssignVariableOp"training/RMSprop/conv2d_2/bias/rms1training/RMSprop/RMSprop/update_conv2d_2/bias/add* 
_class
loc:@conv2d_2/bias*
dtype0
■
<training/RMSprop/RMSprop/update_conv2d_2/bias/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_2/bias/rms?^training/RMSprop/RMSprop/update_conv2d_2/bias/AssignVariableOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0
ф
3training/RMSprop/RMSprop/update_conv2d_2/bias/mul_2Multraining/RMSprop/IdentityFtraining/RMSprop/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
Г
Atraining/RMSprop/RMSprop/update_conv2d_2/bias/Sqrt/ReadVariableOpReadVariableOp"training/RMSprop/conv2d_2/bias/rms?^training/RMSprop/RMSprop/update_conv2d_2/bias/AssignVariableOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0
─
2training/RMSprop/RMSprop/update_conv2d_2/bias/SqrtSqrtAtraining/RMSprop/RMSprop/update_conv2d_2/bias/Sqrt/ReadVariableOp*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
╧
3training/RMSprop/RMSprop/update_conv2d_2/bias/add_1AddV22training/RMSprop/RMSprop/update_conv2d_2/bias/Sqrttraining/RMSprop/Const*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
ё
5training/RMSprop/RMSprop/update_conv2d_2/bias/truedivRealDiv3training/RMSprop/RMSprop/update_conv2d_2/bias/mul_23training/RMSprop/RMSprop/update_conv2d_2/bias/add_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
И
>training/RMSprop/RMSprop/update_conv2d_2/bias/ReadVariableOp_1ReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
Ў
1training/RMSprop/RMSprop/update_conv2d_2/bias/subSub>training/RMSprop/RMSprop/update_conv2d_2/bias/ReadVariableOp_15training/RMSprop/RMSprop/update_conv2d_2/bias/truediv*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
┼
@training/RMSprop/RMSprop/update_conv2d_2/bias/AssignVariableOp_1AssignVariableOpconv2d_2/bias1training/RMSprop/RMSprop/update_conv2d_2/bias/sub* 
_class
loc:@conv2d_2/bias*
dtype0
э
>training/RMSprop/RMSprop/update_conv2d_2/bias/ReadVariableOp_2ReadVariableOpconv2d_2/biasA^training/RMSprop/RMSprop/update_conv2d_2/bias/AssignVariableOp_1* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0
д
?training/RMSprop/RMSprop/update_dense/kernel/mul/ReadVariableOpReadVariableOp!training/RMSprop/dense/kernel/rms*!
_output_shapes
:└РА*
dtype0
т
0training/RMSprop/RMSprop/update_dense/kernel/mulMultraining/RMSprop/Identity_1?training/RMSprop/RMSprop/update_dense/kernel/mul/ReadVariableOp*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╦
3training/RMSprop/RMSprop/update_dense/kernel/SquareSquare?training/RMSprop/gradients/gradients/dense/MatMul_grad/MatMul_1*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╤
2training/RMSprop/RMSprop/update_dense/kernel/mul_1Multraining/RMSprop/sub3training/RMSprop/RMSprop/update_dense/kernel/Square*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
ь
0training/RMSprop/RMSprop/update_dense/kernel/addAddV20training/RMSprop/RMSprop/update_dense/kernel/mul2training/RMSprop/RMSprop/update_dense/kernel/mul_1*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╘
=training/RMSprop/RMSprop/update_dense/kernel/AssignVariableOpAssignVariableOp!training/RMSprop/dense/kernel/rms0training/RMSprop/RMSprop/update_dense/kernel/add*
_class
loc:@dense/kernel*
dtype0
Б
;training/RMSprop/RMSprop/update_dense/kernel/ReadVariableOpReadVariableOp!training/RMSprop/dense/kernel/rms>^training/RMSprop/RMSprop/update_dense/kernel/AssignVariableOp*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
т
2training/RMSprop/RMSprop/update_dense/kernel/mul_2Multraining/RMSprop/Identity?training/RMSprop/gradients/gradients/dense/MatMul_grad/MatMul_1*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
Ж
@training/RMSprop/RMSprop/update_dense/kernel/Sqrt/ReadVariableOpReadVariableOp!training/RMSprop/dense/kernel/rms>^training/RMSprop/RMSprop/update_dense/kernel/AssignVariableOp*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
╚
1training/RMSprop/RMSprop/update_dense/kernel/SqrtSqrt@training/RMSprop/RMSprop/update_dense/kernel/Sqrt/ReadVariableOp*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╙
2training/RMSprop/RMSprop/update_dense/kernel/add_1AddV21training/RMSprop/RMSprop/update_dense/kernel/Sqrttraining/RMSprop/Const*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
Ї
4training/RMSprop/RMSprop/update_dense/kernel/truedivRealDiv2training/RMSprop/RMSprop/update_dense/kernel/mul_22training/RMSprop/RMSprop/update_dense/kernel/add_1*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
Н
=training/RMSprop/RMSprop/update_dense/kernel/ReadVariableOp_1ReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
∙
0training/RMSprop/RMSprop/update_dense/kernel/subSub=training/RMSprop/RMSprop/update_dense/kernel/ReadVariableOp_14training/RMSprop/RMSprop/update_dense/kernel/truediv*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
┴
?training/RMSprop/RMSprop/update_dense/kernel/AssignVariableOp_1AssignVariableOpdense/kernel0training/RMSprop/RMSprop/update_dense/kernel/sub*
_class
loc:@dense/kernel*
dtype0
Ё
=training/RMSprop/RMSprop/update_dense/kernel/ReadVariableOp_2ReadVariableOpdense/kernel@^training/RMSprop/RMSprop/update_dense/kernel/AssignVariableOp_1*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
Ъ
=training/RMSprop/RMSprop/update_dense/bias/mul/ReadVariableOpReadVariableOptraining/RMSprop/dense/bias/rms*
_output_shapes	
:А*
dtype0
╓
.training/RMSprop/RMSprop/update_dense/bias/mulMultraining/RMSprop/Identity_1=training/RMSprop/RMSprop/update_dense/bias/mul/ReadVariableOp*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
┼
1training/RMSprop/RMSprop/update_dense/bias/SquareSquareCtraining/RMSprop/gradients/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
┼
0training/RMSprop/RMSprop/update_dense/bias/mul_1Multraining/RMSprop/sub1training/RMSprop/RMSprop/update_dense/bias/Square*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
▐
.training/RMSprop/RMSprop/update_dense/bias/addAddV2.training/RMSprop/RMSprop/update_dense/bias/mul0training/RMSprop/RMSprop/update_dense/bias/mul_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
╠
;training/RMSprop/RMSprop/update_dense/bias/AssignVariableOpAssignVariableOptraining/RMSprop/dense/bias/rms.training/RMSprop/RMSprop/update_dense/bias/add*
_class
loc:@dense/bias*
dtype0
є
9training/RMSprop/RMSprop/update_dense/bias/ReadVariableOpReadVariableOptraining/RMSprop/dense/bias/rms<^training/RMSprop/RMSprop/update_dense/bias/AssignVariableOp*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0
▄
0training/RMSprop/RMSprop/update_dense/bias/mul_2Multraining/RMSprop/IdentityCtraining/RMSprop/gradients/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
°
>training/RMSprop/RMSprop/update_dense/bias/Sqrt/ReadVariableOpReadVariableOptraining/RMSprop/dense/bias/rms<^training/RMSprop/RMSprop/update_dense/bias/AssignVariableOp*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0
╝
/training/RMSprop/RMSprop/update_dense/bias/SqrtSqrt>training/RMSprop/RMSprop/update_dense/bias/Sqrt/ReadVariableOp*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
╟
0training/RMSprop/RMSprop/update_dense/bias/add_1AddV2/training/RMSprop/RMSprop/update_dense/bias/Sqrttraining/RMSprop/Const*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
ц
2training/RMSprop/RMSprop/update_dense/bias/truedivRealDiv0training/RMSprop/RMSprop/update_dense/bias/mul_20training/RMSprop/RMSprop/update_dense/bias/add_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Г
;training/RMSprop/RMSprop/update_dense/bias/ReadVariableOp_1ReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
ы
.training/RMSprop/RMSprop/update_dense/bias/subSub;training/RMSprop/RMSprop/update_dense/bias/ReadVariableOp_12training/RMSprop/RMSprop/update_dense/bias/truediv*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
╣
=training/RMSprop/RMSprop/update_dense/bias/AssignVariableOp_1AssignVariableOp
dense/bias.training/RMSprop/RMSprop/update_dense/bias/sub*
_class
loc:@dense/bias*
dtype0
т
;training/RMSprop/RMSprop/update_dense/bias/ReadVariableOp_2ReadVariableOp
dense/bias>^training/RMSprop/RMSprop/update_dense/bias/AssignVariableOp_1*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0
ж
Atraining/RMSprop/RMSprop/update_dense_1/kernel/mul/ReadVariableOpReadVariableOp#training/RMSprop/dense_1/kernel/rms*
_output_shapes
:	А*
dtype0
ц
2training/RMSprop/RMSprop/update_dense_1/kernel/mulMultraining/RMSprop/Identity_1Atraining/RMSprop/RMSprop/update_dense_1/kernel/mul/ReadVariableOp*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
╧
5training/RMSprop/RMSprop/update_dense_1/kernel/SquareSquareAtraining/RMSprop/gradients/gradients/dense_1/MatMul_grad/MatMul_1*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
╒
4training/RMSprop/RMSprop/update_dense_1/kernel/mul_1Multraining/RMSprop/sub5training/RMSprop/RMSprop/update_dense_1/kernel/Square*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
Є
2training/RMSprop/RMSprop/update_dense_1/kernel/addAddV22training/RMSprop/RMSprop/update_dense_1/kernel/mul4training/RMSprop/RMSprop/update_dense_1/kernel/mul_1*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
▄
?training/RMSprop/RMSprop/update_dense_1/kernel/AssignVariableOpAssignVariableOp#training/RMSprop/dense_1/kernel/rms2training/RMSprop/RMSprop/update_dense_1/kernel/add*!
_class
loc:@dense_1/kernel*
dtype0
З
=training/RMSprop/RMSprop/update_dense_1/kernel/ReadVariableOpReadVariableOp#training/RMSprop/dense_1/kernel/rms@^training/RMSprop/RMSprop/update_dense_1/kernel/AssignVariableOp*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
ц
4training/RMSprop/RMSprop/update_dense_1/kernel/mul_2Multraining/RMSprop/IdentityAtraining/RMSprop/gradients/gradients/dense_1/MatMul_grad/MatMul_1*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
М
Btraining/RMSprop/RMSprop/update_dense_1/kernel/Sqrt/ReadVariableOpReadVariableOp#training/RMSprop/dense_1/kernel/rms@^training/RMSprop/RMSprop/update_dense_1/kernel/AssignVariableOp*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
╠
3training/RMSprop/RMSprop/update_dense_1/kernel/SqrtSqrtBtraining/RMSprop/RMSprop/update_dense_1/kernel/Sqrt/ReadVariableOp*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
╫
4training/RMSprop/RMSprop/update_dense_1/kernel/add_1AddV23training/RMSprop/RMSprop/update_dense_1/kernel/Sqrttraining/RMSprop/Const*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
·
6training/RMSprop/RMSprop/update_dense_1/kernel/truedivRealDiv4training/RMSprop/RMSprop/update_dense_1/kernel/mul_24training/RMSprop/RMSprop/update_dense_1/kernel/add_1*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
П
?training/RMSprop/RMSprop/update_dense_1/kernel/ReadVariableOp_1ReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
 
2training/RMSprop/RMSprop/update_dense_1/kernel/subSub?training/RMSprop/RMSprop/update_dense_1/kernel/ReadVariableOp_16training/RMSprop/RMSprop/update_dense_1/kernel/truediv*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
╔
Atraining/RMSprop/RMSprop/update_dense_1/kernel/AssignVariableOp_1AssignVariableOpdense_1/kernel2training/RMSprop/RMSprop/update_dense_1/kernel/sub*!
_class
loc:@dense_1/kernel*
dtype0
Ў
?training/RMSprop/RMSprop/update_dense_1/kernel/ReadVariableOp_2ReadVariableOpdense_1/kernelB^training/RMSprop/RMSprop/update_dense_1/kernel/AssignVariableOp_1*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
Э
?training/RMSprop/RMSprop/update_dense_1/bias/mul/ReadVariableOpReadVariableOp!training/RMSprop/dense_1/bias/rms*
_output_shapes
:*
dtype0
█
0training/RMSprop/RMSprop/update_dense_1/bias/mulMultraining/RMSprop/Identity_1?training/RMSprop/RMSprop/update_dense_1/bias/mul/ReadVariableOp*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
╩
3training/RMSprop/RMSprop/update_dense_1/bias/SquareSquareEtraining/RMSprop/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
╩
2training/RMSprop/RMSprop/update_dense_1/bias/mul_1Multraining/RMSprop/sub3training/RMSprop/RMSprop/update_dense_1/bias/Square*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
х
0training/RMSprop/RMSprop/update_dense_1/bias/addAddV20training/RMSprop/RMSprop/update_dense_1/bias/mul2training/RMSprop/RMSprop/update_dense_1/bias/mul_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
╘
=training/RMSprop/RMSprop/update_dense_1/bias/AssignVariableOpAssignVariableOp!training/RMSprop/dense_1/bias/rms0training/RMSprop/RMSprop/update_dense_1/bias/add*
_class
loc:@dense_1/bias*
dtype0
·
;training/RMSprop/RMSprop/update_dense_1/bias/ReadVariableOpReadVariableOp!training/RMSprop/dense_1/bias/rms>^training/RMSprop/RMSprop/update_dense_1/bias/AssignVariableOp*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0
с
2training/RMSprop/RMSprop/update_dense_1/bias/mul_2Multraining/RMSprop/IdentityEtraining/RMSprop/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
 
@training/RMSprop/RMSprop/update_dense_1/bias/Sqrt/ReadVariableOpReadVariableOp!training/RMSprop/dense_1/bias/rms>^training/RMSprop/RMSprop/update_dense_1/bias/AssignVariableOp*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0
┴
1training/RMSprop/RMSprop/update_dense_1/bias/SqrtSqrt@training/RMSprop/RMSprop/update_dense_1/bias/Sqrt/ReadVariableOp*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
╠
2training/RMSprop/RMSprop/update_dense_1/bias/add_1AddV21training/RMSprop/RMSprop/update_dense_1/bias/Sqrttraining/RMSprop/Const*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
э
4training/RMSprop/RMSprop/update_dense_1/bias/truedivRealDiv2training/RMSprop/RMSprop/update_dense_1/bias/mul_22training/RMSprop/RMSprop/update_dense_1/bias/add_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
Ж
=training/RMSprop/RMSprop/update_dense_1/bias/ReadVariableOp_1ReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
Є
0training/RMSprop/RMSprop/update_dense_1/bias/subSub=training/RMSprop/RMSprop/update_dense_1/bias/ReadVariableOp_14training/RMSprop/RMSprop/update_dense_1/bias/truediv*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
┴
?training/RMSprop/RMSprop/update_dense_1/bias/AssignVariableOp_1AssignVariableOpdense_1/bias0training/RMSprop/RMSprop/update_dense_1/bias/sub*
_class
loc:@dense_1/bias*
dtype0
щ
=training/RMSprop/RMSprop/update_dense_1/bias/ReadVariableOp_2ReadVariableOpdense_1/bias@^training/RMSprop/RMSprop/update_dense_1/bias/AssignVariableOp_1*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0
№
training/RMSprop/RMSprop/ConstConst?^training/RMSprop/RMSprop/update_conv2d/bias/AssignVariableOp_1A^training/RMSprop/RMSprop/update_conv2d/kernel/AssignVariableOp_1A^training/RMSprop/RMSprop/update_conv2d_1/bias/AssignVariableOp_1C^training/RMSprop/RMSprop/update_conv2d_1/kernel/AssignVariableOp_1A^training/RMSprop/RMSprop/update_conv2d_2/bias/AssignVariableOp_1C^training/RMSprop/RMSprop/update_conv2d_2/kernel/AssignVariableOp_1>^training/RMSprop/RMSprop/update_dense/bias/AssignVariableOp_1@^training/RMSprop/RMSprop/update_dense/kernel/AssignVariableOp_1@^training/RMSprop/RMSprop/update_dense_1/bias/AssignVariableOp_1B^training/RMSprop/RMSprop/update_dense_1/kernel/AssignVariableOp_1*
_output_shapes
: *
dtype0	*
value	B	 R
v
,training/RMSprop/RMSprop/AssignAddVariableOpAssignAddVariableOpitertraining/RMSprop/RMSprop/Const*
dtype0	
W
training_1/group_depsNoOp	^loss/mul-^training/RMSprop/RMSprop/AssignAddVariableOp
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bmodel
┬
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^BTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
Л
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
Q
IdentityIdentity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
n
AssignVariableOpAssignVariableOp"training/RMSprop/conv2d/kernel/rmsIdentity"/device:CPU:0*
dtype0
┬
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_1IdentityRestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
p
AssignVariableOp_1AssignVariableOp training/RMSprop/conv2d/bias/rms
Identity_1"/device:CPU:0*
dtype0
─
RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^BTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_2IdentityRestoreV2_2"/device:CPU:0*
T0*
_output_shapes
:
t
AssignVariableOp_2AssignVariableOp$training/RMSprop/conv2d_1/kernel/rms
Identity_2"/device:CPU:0*
dtype0
┬
RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_3IdentityRestoreV2_3"/device:CPU:0*
T0*
_output_shapes
:
r
AssignVariableOp_3AssignVariableOp"training/RMSprop/conv2d_1/bias/rms
Identity_3"/device:CPU:0*
dtype0
─
RestoreV2_4/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^BTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_4IdentityRestoreV2_4"/device:CPU:0*
T0*
_output_shapes
:
t
AssignVariableOp_4AssignVariableOp$training/RMSprop/conv2d_2/kernel/rms
Identity_4"/device:CPU:0*
dtype0
┬
RestoreV2_5/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_5IdentityRestoreV2_5"/device:CPU:0*
T0*
_output_shapes
:
r
AssignVariableOp_5AssignVariableOp"training/RMSprop/conv2d_2/bias/rms
Identity_5"/device:CPU:0*
dtype0
─
RestoreV2_6/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^BTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_6IdentityRestoreV2_6"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_6AssignVariableOp!training/RMSprop/dense/kernel/rms
Identity_6"/device:CPU:0*
dtype0
┬
RestoreV2_7/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_7IdentityRestoreV2_7"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_7AssignVariableOptraining/RMSprop/dense/bias/rms
Identity_7"/device:CPU:0*
dtype0
─
RestoreV2_8/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^BTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_8IdentityRestoreV2_8"/device:CPU:0*
T0*
_output_shapes
:
s
AssignVariableOp_8AssignVariableOp#training/RMSprop/dense_1/kernel/rms
Identity_8"/device:CPU:0*
dtype0
┬
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*g
value^B\BRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
С
RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
U

Identity_9IdentityRestoreV2_9"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_9AssignVariableOp!training/RMSprop/dense_1/bias/rms
Identity_9"/device:CPU:0*
dtype0
№
RestoreV2_10/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Я
valueХBТB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
С
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 
┌
RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	
W
Identity_10IdentityRestoreV2_10"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_10AssignVariableOpconv2d/biasIdentity_10"/device:CPU:0*
dtype0
Y
Identity_11IdentityRestoreV2_10:1"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_11AssignVariableOpconv2d/kernelIdentity_11"/device:CPU:0*
dtype0
Y
Identity_12IdentityRestoreV2_10:2"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_12AssignVariableOpconv2d_1/biasIdentity_12"/device:CPU:0*
dtype0
Y
Identity_13IdentityRestoreV2_10:3"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_13AssignVariableOpconv2d_1/kernelIdentity_13"/device:CPU:0*
dtype0
Y
Identity_14IdentityRestoreV2_10:4"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_14AssignVariableOpconv2d_2/biasIdentity_14"/device:CPU:0*
dtype0
Y
Identity_15IdentityRestoreV2_10:5"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_15AssignVariableOpconv2d_2/kernelIdentity_15"/device:CPU:0*
dtype0
Y
Identity_16IdentityRestoreV2_10:6"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_16AssignVariableOp
dense/biasIdentity_16"/device:CPU:0*
dtype0
Y
Identity_17IdentityRestoreV2_10:7"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_17AssignVariableOpdense/kernelIdentity_17"/device:CPU:0*
dtype0
Y
Identity_18IdentityRestoreV2_10:8"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_18AssignVariableOpdense_1/biasIdentity_18"/device:CPU:0*
dtype0
Y
Identity_19IdentityRestoreV2_10:9"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_19AssignVariableOpdense_1/kernelIdentity_19"/device:CPU:0*
dtype0
Z
Identity_20IdentityRestoreV2_10:10"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_20AssignVariableOptraining/RMSprop/decayIdentity_20"/device:CPU:0*
dtype0
Z
Identity_21IdentityRestoreV2_10:11"/device:CPU:0*
T0	*
_output_shapes
:
V
AssignVariableOp_21AssignVariableOpiterIdentity_21"/device:CPU:0*
dtype0	
Z
Identity_22IdentityRestoreV2_10:12"/device:CPU:0*
T0*
_output_shapes
:
p
AssignVariableOp_22AssignVariableOptraining/RMSprop/learning_rateIdentity_22"/device:CPU:0*
dtype0
Z
Identity_23IdentityRestoreV2_10:13"/device:CPU:0*
T0*
_output_shapes
:
k
AssignVariableOp_23AssignVariableOptraining/RMSprop/momentumIdentity_23"/device:CPU:0*
dtype0
Z
Identity_24IdentityRestoreV2_10:14"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_24AssignVariableOptraining/RMSprop/rhoIdentity_24"/device:CPU:0*
dtype0
Q
VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_1VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
I
VarIsInitializedOp_2VarIsInitializedOptotal*
_output_shapes
: 
H
VarIsInitializedOp_3VarIsInitializedOpiter*
_output_shapes
: 
f
VarIsInitializedOp_4VarIsInitializedOp"training/RMSprop/conv2d_2/bias/rms*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOpcount*
_output_shapes
: 
d
VarIsInitializedOp_7VarIsInitializedOp training/RMSprop/conv2d/bias/rms*
_output_shapes
: 
h
VarIsInitializedOp_8VarIsInitializedOp$training/RMSprop/conv2d_1/kernel/rms*
_output_shapes
: 
f
VarIsInitializedOp_9VarIsInitializedOp"training/RMSprop/conv2d_1/bias/rms*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
h
VarIsInitializedOp_11VarIsInitializedOp#training/RMSprop/dense_1/kernel/rms*
_output_shapes
: 
R
VarIsInitializedOp_12VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
Q
VarIsInitializedOp_13VarIsInitializedOpdense/kernel*
_output_shapes
: 
[
VarIsInitializedOp_14VarIsInitializedOptraining/RMSprop/decay*
_output_shapes
: 
R
VarIsInitializedOp_15VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
Y
VarIsInitializedOp_16VarIsInitializedOptraining/RMSprop/rho*
_output_shapes
: 
f
VarIsInitializedOp_17VarIsInitializedOp!training/RMSprop/dense_1/bias/rms*
_output_shapes
: 
O
VarIsInitializedOp_18VarIsInitializedOp
dense/bias*
_output_shapes
: 
^
VarIsInitializedOp_19VarIsInitializedOptraining/RMSprop/momentum*
_output_shapes
: 
f
VarIsInitializedOp_20VarIsInitializedOp!training/RMSprop/dense/kernel/rms*
_output_shapes
: 
d
VarIsInitializedOp_21VarIsInitializedOptraining/RMSprop/dense/bias/rms*
_output_shapes
: 
P
VarIsInitializedOp_22VarIsInitializedOpconv2d/bias*
_output_shapes
: 
c
VarIsInitializedOp_23VarIsInitializedOptraining/RMSprop/learning_rate*
_output_shapes
: 
g
VarIsInitializedOp_24VarIsInitializedOp"training/RMSprop/conv2d/kernel/rms*
_output_shapes
: 
Q
VarIsInitializedOp_25VarIsInitializedOpdense_1/bias*
_output_shapes
: 
i
VarIsInitializedOp_26VarIsInitializedOp$training/RMSprop/conv2d_2/kernel/rms*
_output_shapes
: 
█
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^iter/Assign^total/Assign(^training/RMSprop/conv2d/bias/rms/Assign*^training/RMSprop/conv2d/kernel/rms/Assign*^training/RMSprop/conv2d_1/bias/rms/Assign,^training/RMSprop/conv2d_1/kernel/rms/Assign*^training/RMSprop/conv2d_2/bias/rms/Assign,^training/RMSprop/conv2d_2/kernel/rms/Assign^training/RMSprop/decay/Assign'^training/RMSprop/dense/bias/rms/Assign)^training/RMSprop/dense/kernel/rms/Assign)^training/RMSprop/dense_1/bias/rms/Assign+^training/RMSprop/dense_1/kernel/rms/Assign&^training/RMSprop/learning_rate/Assign!^training/RMSprop/momentum/Assign^training/RMSprop/rho/Assign
W
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B 
W
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B 
s
StaticRegexFullMatchStaticRegexFullMatchConst_2"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_3Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
В
Const_4Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_012a963f47be4cd394edb9b017d7cd5d/part
h
SelectSelectStaticRegexFullMatchConst_3Const_4"/device:CPU:**
T0*
_output_shapes
: 
Y

StringJoin
StringJoinConst_2Select"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
ц
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*П
valueЕBВB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
б
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
ю	
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpiter/Read/ReadVariableOp*training/RMSprop/decay/Read/ReadVariableOp2training/RMSprop/learning_rate/Read/ReadVariableOp-training/RMSprop/momentum/Read/ReadVariableOp(training/RMSprop/rho/Read/ReadVariableOp6training/RMSprop/conv2d/kernel/rms/Read/ReadVariableOp4training/RMSprop/conv2d/bias/rms/Read/ReadVariableOp8training/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOp6training/RMSprop/conv2d_1/bias/rms/Read/ReadVariableOp8training/RMSprop/conv2d_2/kernel/rms/Read/ReadVariableOp6training/RMSprop/conv2d_2/bias/rms/Read/ReadVariableOp5training/RMSprop/dense/kernel/rms/Read/ReadVariableOp3training/RMSprop/dense/bias/rms/Read/ReadVariableOp7training/RMSprop/dense_1/kernel/rms/Read/ReadVariableOp5training/RMSprop/dense_1/bias/rms/Read/ReadVariableOpConst_1"/device:CPU:0*(
dtypes
2	
Е
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_25IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_26Identity
div_no_nan*
T0*
_output_shapes
: 
}
metric_op_wrapperConst'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
╛
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*ё
valueчBфB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
Х
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
▀	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp4training/RMSprop/conv2d/bias/rms/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp6training/RMSprop/conv2d/kernel/rms/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp6training/RMSprop/conv2d_1/bias/rms/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp8training/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp6training/RMSprop/conv2d_2/bias/rms/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp8training/RMSprop/conv2d_2/kernel/rms/Read/ReadVariableOpdense/bias/Read/ReadVariableOp3training/RMSprop/dense/bias/rms/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp5training/RMSprop/dense/kernel/rms/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp5training/RMSprop/dense_1/bias/rms/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp7training/RMSprop/dense_1/kernel/rms/Read/ReadVariableOp*training/RMSprop/decay/Read/ReadVariableOpiter/Read/ReadVariableOp2training/RMSprop/learning_rate/Read/ReadVariableOp-training/RMSprop/momentum/Read/ReadVariableOp(training/RMSprop/rho/Read/ReadVariableOp*'
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
╨
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ё
valueчBфB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
з
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
Ч
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
k
save/AssignVariableOp_1AssignVariableOp training/RMSprop/conv2d/bias/rmssave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
m
save/AssignVariableOp_3AssignVariableOp"training/RMSprop/conv2d/kernel/rmssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
X
save/AssignVariableOp_4AssignVariableOpconv2d_1/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
m
save/AssignVariableOp_5AssignVariableOp"training/RMSprop/conv2d_1/bias/rmssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Z
save/AssignVariableOp_6AssignVariableOpconv2d_1/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
o
save/AssignVariableOp_7AssignVariableOp$training/RMSprop/conv2d_1/kernel/rmssave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
X
save/AssignVariableOp_8AssignVariableOpconv2d_2/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
m
save/AssignVariableOp_9AssignVariableOp"training/RMSprop/conv2d_2/bias/rmssave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
\
save/AssignVariableOp_10AssignVariableOpconv2d_2/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
q
save/AssignVariableOp_11AssignVariableOp$training/RMSprop/conv2d_2/kernel/rmssave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
dense/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
l
save/AssignVariableOp_13AssignVariableOptraining/RMSprop/dense/bias/rmssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Y
save/AssignVariableOp_14AssignVariableOpdense/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
n
save/AssignVariableOp_15AssignVariableOp!training/RMSprop/dense/kernel/rmssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Y
save/AssignVariableOp_16AssignVariableOpdense_1/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
n
save/AssignVariableOp_17AssignVariableOp!training/RMSprop/dense_1/bias/rmssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
[
save/AssignVariableOp_18AssignVariableOpdense_1/kernelsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
p
save/AssignVariableOp_19AssignVariableOp#training/RMSprop/dense_1/kernel/rmssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
c
save/AssignVariableOp_20AssignVariableOptraining/RMSprop/decaysave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_21AssignVariableOpitersave/Identity_21*
dtype0	
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
k
save/AssignVariableOp_22AssignVariableOptraining/RMSprop/learning_ratesave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
f
save/AssignVariableOp_23AssignVariableOptraining/RMSprop/momentumsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0*
_output_shapes
:
a
save/AssignVariableOp_24AssignVariableOptraining/RMSprop/rhosave/Identity_24*
dtype0
п
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"╕D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"┼
local_variables▒о
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"╒	
trainable_variables╜	║	
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"Р
	variablesВ 
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H
Я
training/RMSprop/decay:0training/RMSprop/decay/Assign,training/RMSprop/decay/Read/ReadVariableOp:0(22training/RMSprop/decay/Initializer/initial_value:0H
┐
 training/RMSprop/learning_rate:0%training/RMSprop/learning_rate/Assign4training/RMSprop/learning_rate/Read/ReadVariableOp:0(2:training/RMSprop/learning_rate/Initializer/initial_value:0H
л
training/RMSprop/momentum:0 training/RMSprop/momentum/Assign/training/RMSprop/momentum/Read/ReadVariableOp:0(25training/RMSprop/momentum/Initializer/initial_value:0H
Ч
training/RMSprop/rho:0training/RMSprop/rho/Assign*training/RMSprop/rho/Read/ReadVariableOp:0(20training/RMSprop/rho/Initializer/initial_value:0H
┼
$training/RMSprop/conv2d/kernel/rms:0)training/RMSprop/conv2d/kernel/rms/Assign8training/RMSprop/conv2d/kernel/rms/Read/ReadVariableOp:0(26training/RMSprop/conv2d/kernel/rms/Initializer/zeros:0
╜
"training/RMSprop/conv2d/bias/rms:0'training/RMSprop/conv2d/bias/rms/Assign6training/RMSprop/conv2d/bias/rms/Read/ReadVariableOp:0(24training/RMSprop/conv2d/bias/rms/Initializer/zeros:0
═
&training/RMSprop/conv2d_1/kernel/rms:0+training/RMSprop/conv2d_1/kernel/rms/Assign:training/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOp:0(28training/RMSprop/conv2d_1/kernel/rms/Initializer/zeros:0
┼
$training/RMSprop/conv2d_1/bias/rms:0)training/RMSprop/conv2d_1/bias/rms/Assign8training/RMSprop/conv2d_1/bias/rms/Read/ReadVariableOp:0(26training/RMSprop/conv2d_1/bias/rms/Initializer/zeros:0
═
&training/RMSprop/conv2d_2/kernel/rms:0+training/RMSprop/conv2d_2/kernel/rms/Assign:training/RMSprop/conv2d_2/kernel/rms/Read/ReadVariableOp:0(28training/RMSprop/conv2d_2/kernel/rms/Initializer/zeros:0
┼
$training/RMSprop/conv2d_2/bias/rms:0)training/RMSprop/conv2d_2/bias/rms/Assign8training/RMSprop/conv2d_2/bias/rms/Read/ReadVariableOp:0(26training/RMSprop/conv2d_2/bias/rms/Initializer/zeros:0
┴
#training/RMSprop/dense/kernel/rms:0(training/RMSprop/dense/kernel/rms/Assign7training/RMSprop/dense/kernel/rms/Read/ReadVariableOp:0(25training/RMSprop/dense/kernel/rms/Initializer/zeros:0
╣
!training/RMSprop/dense/bias/rms:0&training/RMSprop/dense/bias/rms/Assign5training/RMSprop/dense/bias/rms/Read/ReadVariableOp:0(23training/RMSprop/dense/bias/rms/Initializer/zeros:0
╔
%training/RMSprop/dense_1/kernel/rms:0*training/RMSprop/dense_1/kernel/rms/Assign9training/RMSprop/dense_1/kernel/rms/Read/ReadVariableOp:0(27training/RMSprop/dense_1/kernel/rms/Initializer/zeros:0
┴
#training/RMSprop/dense_1/bias/rms:0(training/RMSprop/dense_1/bias/rms/Assign7training/RMSprop/dense_1/bias/rms/Read/ReadVariableOp:0(25training/RMSprop/dense_1/bias/rms/Initializer/zeros:0*@
__saved_model_init_op'%
__saved_model_init_op
init_1*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps*Ї
trainъ
?
conv2d_input/
conv2d_input:0         ЦЦ
B
dense_1_target0
dense_1_target:0                  
loss

loss/mul:0 9
metrics/accuracy/update_op
metric_op_wrapper:0 -
metrics/accuracy/value
Identity_26:0 ?
predictions/dense_1(
dense_1/Sigmoid:0         tensorflow/supervised/training╩╛
ї╚
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
k
Equal
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(Р
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
;
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
9
VarIsInitializedOp
resource
is_initialized
И"eval*2.3.02v2.3.0-rc2-23-gb36436b0878▒Л
Г
conv2d_inputPlaceholder*1
_output_shapes
:         ЦЦ*
dtype0*&
shape:         ЦЦ
й
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            
У
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *╨?╛
У
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *╨?>
╫
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
а
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
К
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
О
conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
и
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ФФ*
paddingVALID*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
Г
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:         ФФ
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:         ФФ
Ъ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*/
_output_shapes
:         JJ*
ksize
*
paddingVALID*
strides

н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"             
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *я[ё╜
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *я[ё=
▌
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ж
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
О
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
valueB *    
Ф
conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
│
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
З
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         HH 
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:         HH 
Ю
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:         $$ *
ksize
*
paddingVALID*
strides

н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *лкк╜
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *лкк=
▌
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ж
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
О
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0*
valueB@*    
Ф
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
╡
conv2d_2/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ""@*
paddingVALID*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
З
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         ""@
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         ""@
Ю
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides

^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @H  
v
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/Const*
T0*)
_output_shapes
:         └Р
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"@H     
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛС╝
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛС<
╧
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
у
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╒
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
Ш
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:└РА*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
К
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0*
valueBА*    
М

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
k
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *|▌╜
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *|▌=
╙
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
Ь
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
С
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
u
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*
T0*'
_output_shapes
:         
Г
dense_1_targetPlaceholder*0
_output_shapes
:                  *
dtype0*%
shape:                  
v
total/Initializer/zerosConst*
_class

loc:@total*
_output_shapes
: *
dtype0*
valueB
 *    
x
totalVarHandleOp*
_class

loc:@total*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
_class

loc:@count*
_output_shapes
: *
dtype0*
valueB
 *    
x
countVarHandleOp*
_class

loc:@count*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
\
metrics/accuracy/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?

metrics/accuracy/GreaterGreaterdense_1/Sigmoidmetrics/accuracy/Cast/x*
T0*'
_output_shapes
:         
z
metrics/accuracy/Cast_1Castmetrics/accuracy/Greater*

DstT0*

SrcT0
*'
_output_shapes
:         
Г
metrics/accuracy/EqualEqualdense_1_targetmetrics/accuracy/Cast_1*
T0*0
_output_shapes
:                  
Б
metrics/accuracy/Cast_2Castmetrics/accuracy/Equal*

DstT0*

SrcT0
*0
_output_shapes
:                  
r
'metrics/accuracy/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         
Н
metrics/accuracy/MeanMeanmetrics/accuracy/Cast_2'metrics/accuracy/Mean/reduction_indices*
T0*#
_output_shapes
:         
`
metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
k
metrics/accuracy/SumSummetrics/accuracy/Meanmetrics/accuracy/Const*
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
Ы
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
_output_shapes
: *
dtype0
U
metrics/accuracy/SizeSizemetrics/accuracy/Mean*
T0*
_output_shapes
: 
f
metrics/accuracy/Cast_3Castmetrics/accuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
С
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_3%^metrics/accuracy/AssignAddVariableOp*
dtype0
п
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
С
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
У
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
в
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
\
loss/dense_1_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
loss/dense_1_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
\
loss/dense_1_loss/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
q
loss/dense_1_loss/subSubloss/dense_1_loss/sub/xloss/dense_1_loss/Const_1*
T0*
_output_shapes
: 
М
'loss/dense_1_loss/clip_by_value/MinimumMinimumdense_1/Sigmoidloss/dense_1_loss/sub*
T0*'
_output_shapes
:         
а
loss/dense_1_loss/clip_by_valueMaximum'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const_1*
T0*'
_output_shapes
:         
\
loss/dense_1_loss/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
К
loss/dense_1_loss/addAddV2loss/dense_1_loss/clip_by_valueloss/dense_1_loss/add/y*
T0*'
_output_shapes
:         
e
loss/dense_1_loss/LogLogloss/dense_1_loss/add*
T0*'
_output_shapes
:         
~
loss/dense_1_loss/mulMuldense_1_targetloss/dense_1_loss/Log*
T0*0
_output_shapes
:                  
^
loss/dense_1_loss/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Д
loss/dense_1_loss/sub_1Subloss/dense_1_loss/sub_1/xdense_1_target*
T0*0
_output_shapes
:                  
^
loss/dense_1_loss/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
М
loss/dense_1_loss/sub_2Subloss/dense_1_loss/sub_2/xloss/dense_1_loss/clip_by_value*
T0*'
_output_shapes
:         
^
loss/dense_1_loss/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3
Ж
loss/dense_1_loss/add_1AddV2loss/dense_1_loss/sub_2loss/dense_1_loss/add_1/y*
T0*'
_output_shapes
:         
i
loss/dense_1_loss/Log_1Logloss/dense_1_loss/add_1*
T0*'
_output_shapes
:         
Л
loss/dense_1_loss/mul_1Mulloss/dense_1_loss/sub_1loss/dense_1_loss/Log_1*
T0*0
_output_shapes
:                  
Л
loss/dense_1_loss/add_2AddV2loss/dense_1_loss/mulloss/dense_1_loss/mul_1*
T0*0
_output_shapes
:                  
p
loss/dense_1_loss/NegNegloss/dense_1_loss/add_2*
T0*0
_output_shapes
:                  
s
(loss/dense_1_loss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         
Н
loss/dense_1_loss/MeanMeanloss/dense_1_loss/Neg(loss/dense_1_loss/Mean/reduction_indices*
T0*#
_output_shapes
:         
j
%loss/dense_1_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Ч
#loss/dense_1_loss/weighted_loss/MulMulloss/dense_1_loss/Mean%loss/dense_1_loss/weighted_loss/Const*
T0*#
_output_shapes
:         
c
loss/dense_1_loss/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
}
loss/dense_1_loss/SumSum#loss/dense_1_loss/weighted_loss/Mulloss/dense_1_loss/Const_2*
T0*
_output_shapes
: 
l
loss/dense_1_loss/num_elementsSize#loss/dense_1_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
{
#loss/dense_1_loss/num_elements/CastCastloss/dense_1_loss/num_elements*

DstT0*

SrcT0*
_output_shapes
: 
\
loss/dense_1_loss/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
q
loss/dense_1_loss/Sum_1Sumloss/dense_1_loss/Sumloss/dense_1_loss/Const_3*
T0*
_output_shapes
: 
В
loss/dense_1_loss/valueDivNoNanloss/dense_1_loss/Sum_1#loss/dense_1_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
U
loss/mulMul
loss/mul/xloss/dense_1_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
value	B	 R 
u
iterVarHandleOp*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bmodel
└
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ц
value▄B┘B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
Ж
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 
╜
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	
Q
IdentityIdentity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOpAssignVariableOpconv2d/biasIdentity"/device:CPU:0*
dtype0
U

Identity_1IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_1AssignVariableOpconv2d/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_2AssignVariableOpconv2d_1/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_3AssignVariableOpconv2d_1/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_4AssignVariableOpconv2d_2/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_5AssignVariableOpconv2d_2/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
Z
AssignVariableOp_6AssignVariableOp
dense/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_7AssignVariableOpdense/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_8AssignVariableOpdense_1/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_9AssignVariableOpdense_1/kernel
Identity_9"/device:CPU:0*
dtype0
W
Identity_10IdentityRestoreV2:10"/device:CPU:0*
T0	*
_output_shapes
:
V
AssignVariableOp_10AssignVariableOpiterIdentity_10"/device:CPU:0*
dtype0	
Q
VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense/kernel*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_4VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
I
VarIsInitializedOp_5VarIsInitializedOptotal*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOpcount*
_output_shapes
: 
Q
VarIsInitializedOp_7VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
O
VarIsInitializedOp_8VarIsInitializedOpconv2d/bias*
_output_shapes
: 
Q
VarIsInitializedOp_9VarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
T
VarIsInitializedOp_10VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_11VarIsInitializedOpdense_1/bias*
_output_shapes
: 
I
VarIsInitializedOp_12VarIsInitializedOpiter*
_output_shapes
: 
Ь
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^iter/Assign^total/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_11Identity
div_no_nan*
T0*
_output_shapes
: 
}
metric_op_wrapperConst'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
│
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*ц
value▄B┘B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
y
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 
ъ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
┼
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ц
value▄B┘B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
Л
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 
╤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpconv2d/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpconv2d_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
X
save/AssignVariableOp_4AssignVariableOpconv2d_2/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpconv2d_2/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
U
save/AssignVariableOp_6AssignVariableOp
dense/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpdense/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
W
save/AssignVariableOp_8AssignVariableOpdense_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Y
save/AssignVariableOp_9AssignVariableOpdense_1/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_10AssignVariableOpitersave/Identity_10*
dtype0	
╡
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"╕D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"┼
local_variables▒о
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H"╒	
trainable_variables╜	║	
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"Ь

	variablesО
Л

|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H*@
__saved_model_init_op'%
__saved_model_init_op
init_1*я
evalц
?
conv2d_input/
conv2d_input:0         ЦЦ
B
dense_1_target0
dense_1_target:0                  
loss

loss/mul:0 9
metrics/accuracy/update_op
metric_op_wrapper:0 -
metrics/accuracy/value
Identity_11:0 ?
predictions/dense_1(
dense_1/Sigmoid:0         tensorflow/supervised/eval╓щ
ю└
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
0
Sigmoid
x"T
y"T"
Ttype:

2
;
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
9
VarIsInitializedOp
resource
is_initialized
И"serve*2.3.02v2.3.0-rc2-23-gb36436b0878К├
Г
conv2d_inputPlaceholder*1
_output_shapes
:         ЦЦ*
dtype0*&
shape:         ЦЦ
й
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*
_output_shapes
:*
dtype0*%
valueB"            
У
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *╨?╛
У
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
valueB
 *╨?>
╫
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:*
dtype0
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
а
conv2d/kernelVarHandleOp* 
_class
loc:@conv2d/kernel*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 
n
conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
dtype0
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
К
conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
_output_shapes
:*
dtype0*
valueB*    
О
conv2d/biasVarHandleOp*
_class
loc:@conv2d/bias*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 
_
conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
dtype0
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
и
conv2d/Conv2DConv2Dconv2d_inputconv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ФФ*
paddingVALID*
strides

e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
Г
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*1
_output_shapes
:         ФФ
_
conv2d/ReluReluconv2d/BiasAdd*
T0*1
_output_shapes
:         ФФ
Ъ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*/
_output_shapes
:         JJ*
ksize
*
paddingVALID*
strides

н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:*
dtype0*%
valueB"             
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *я[ё╜
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *я[ё=
▌
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: *
dtype0
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
ж
conv2d_1/kernelVarHandleOp*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
О
conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
valueB *    
Ф
conv2d_1/biasVarHandleOp* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
│
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         HH *
paddingVALID*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
З
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         HH 
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:         HH 
Ю
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:         $$ *
ksize
*
paddingVALID*
strides

н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:*
dtype0*%
valueB"          @   
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *лкк╜
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *лкк=
▌
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
Ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ц
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
ж
conv2d_2/kernelVarHandleOp*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
О
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0*
valueB@*    
Ф
conv2d_2/biasVarHandleOp* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
╡
conv2d_2/Conv2DConv2Dmax_pooling2d_1/MaxPoolconv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         ""@*
paddingVALID*
strides

i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
З
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         ""@
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         ""@
Ю
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides

^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    @H  
v
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/Const*
T0*)
_output_shapes
:         └Р
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"@H     
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛС╝
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛС<
╧
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА*
dtype0
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
у
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
╒
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*!
_output_shapes
:└РА
Ш
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:└РА*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
К
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:А*
dtype0*
valueBА*    
М

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
k
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:└РА*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *|▌╜
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *|▌=
╙
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А*
dtype0
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
Ь
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes
:*
dtype0*
valueB*    
С
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А*
dtype0
u
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:         
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*
T0*'
_output_shapes
:         
,
predict/group_depsNoOp^dense_1/Sigmoid
Z
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bmodel
Х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*╗
value▒Bо
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
Д
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 
╕
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2

Q
IdentityIdentity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOpAssignVariableOpconv2d/biasIdentity"/device:CPU:0*
dtype0
U

Identity_1IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_1AssignVariableOpconv2d/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_2AssignVariableOpconv2d_1/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_3AssignVariableOpconv2d_1/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_4AssignVariableOpconv2d_2/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_5AssignVariableOpconv2d_2/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
Z
AssignVariableOp_6AssignVariableOp
dense/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_7AssignVariableOpdense/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_8AssignVariableOpdense_1/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_9AssignVariableOpdense_1/kernel
Identity_9"/device:CPU:0*
dtype0
O
VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_4VarIsInitializedOpconv2d/kernel*
_output_shapes
: 
O
VarIsInitializedOp_5VarIsInitializedOpconv2d/bias*
_output_shapes
: 
S
VarIsInitializedOp_6VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_7VarIsInitializedOpdense/kernel*
_output_shapes
: 
N
VarIsInitializedOp_8VarIsInitializedOp
dense/bias*
_output_shapes
: 
P
VarIsInitializedOp_9VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Ё
initNoOp^conv2d/bias/Assign^conv2d/kernel/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
И
save/SaveV2/tensor_namesConst*
_output_shapes
:
*
dtype0*╗
value▒Bо
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
w
save/SaveV2/shape_and_slicesConst*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 
╧
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp*
dtypes
2

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ъ
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*╗
value▒Bо
B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
Й
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B 
╠
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2

L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpconv2d/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_1/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpconv2d_1/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
X
save/AssignVariableOp_4AssignVariableOpconv2d_2/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpconv2d_2/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
U
save/AssignVariableOp_6AssignVariableOp
dense/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpdense/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
W
save/AssignVariableOp_8AssignVariableOpdense_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Y
save/AssignVariableOp_9AssignVariableOpdense_1/kernelsave/Identity_9*
dtype0
Ъ
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9

init_1NoOp"╕D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"╒	
trainable_variables╜	║	
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"╦	
	variables╜	║	
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08
Д
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
Д
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08*@
__saved_model_init_op'%
__saved_model_init_op
init_1*ж
serving_defaultТ
?
conv2d_input/
conv2d_input:0         ЦЦ3
dense_1(
dense_1/Sigmoid:0         tensorflow/serving/predict