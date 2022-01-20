## Quickstart tutorial to adding MLIR graph rewrite

本文主要介绍如何在TableGen文件中定义Operation及其Rewrite规则 <br>

### 添加Operation

要在td文件中定义一个Operation需要添加以下元素：
- Operation名称，一般为**Dialect.OP**的形式，例如**tfl.add**。
- Operation的特性（Trait），例如Op是否有副作用，是否需要验证操作数与结果的类型等等。
- Operation的参数。包括Operation的输入操作数（input operands），以及attributes（编译期确定的参数）。其中attributes必须命名。
- Operation的计算结果。
- Operation的描述信息。
- Dialect的信息，在dialect互相转换时可能用到。


