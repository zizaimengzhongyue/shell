# hackerrank shell 刷题记录

  该项目是在 hackerrank 刷 shell 类型题目的一个记录
  
## shell 基本语法

### 变量

#### 环境变量

  环境变量由 shell 维护,用户无需声明即可直接调用,在 shell 脚本中,用户可以直接通过 $var 的方式调用这些变量的值  
  
#### 用户变量

  用户可以在像其他编程语言那样直接在 shell 脚本中声明变量.声明语法为"name=value".类似于  
  ```
  var1=10
  var2="helloworld"
  ```
  调用的时候在变量前面加上 $ 符号即可.  
  ```
  echo $var1
  echo $var2
  ```
  *在变量等号和值之间不能出现空格,这是与其他编程语言不同的地方*
  
  在字符串中,可以直接使用变量,这是和 PHP 相似的一个地方:
  ```
  var=value1
  echo "var 的值是 $var"
  ```
  shell 一个非常有用的地方是可以将 shell 命令执行的结果直接复制给变量,有两种语法形式 ,一种是通过反引号(``)的方式,一种是通过 $() 的方式
  ```
  var1=`date`
  echo $var1
  var2=`date`
  echo $var2
  ```
### 执行数学运算
  通常有几种不同的方式可以在 shell 脚本中执行数学运算,我个人比较喜欢用 $[] 和 bc 两种方式
  ``` 
  var1=$[1+2]
  echo $var1
  var2=`echo "(4*3+6)/2" | bc`
  echo $var2
  ```
### 分支 循环
  分支通过 if-then 的方式来控制
  ```
  var1=50
  if (($var1>60))
  then
	  echo "及格"
  else
	  echo "不及格"
  fi
  ```
  循环可以使用 for 或者 while 的方式实现
  ```
  #基本的 for 循环用来遍历列表中的值
  for word in hello world
  do
	  echo $word
  done
  #也可以像 C 语言风格的方式
  for ((i=1;i<=10;i++))
  do
	  echo $i
  done

  ```
### 数组
  shell 中可以使用数组,简单的使用方法如下:
  ```
  var=(hello world good morning)
  echo ${var[1]}
  echo ${var[*]}

  ```
