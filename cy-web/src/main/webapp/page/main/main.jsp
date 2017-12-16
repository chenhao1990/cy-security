<%--
  Created by chenyi
  email: qq228112142@qq.com
  Date : 2017-08-08 17:35:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <script src="/statics/libs/jquery-1.10.2.min.js"></script>
 <!-- 引入 ECharts 文件 -->
 <script src="/statics/plugins/echarts/echarts.js"></script>
</head>
<body>
<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div id="main" style="width: 900px;height:600px;"></div>
</body>
<script type="text/javascript">

    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据

    var option = {
        title: {
            text: '登陆统计'
        },
        color: ['#3398DB'],
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                data : ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期七'],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'当前数量',
                type:'bar',
                barWidth: '60%',
                data:[8459,4845,5486,8974,6584,1536,3654]
            }
        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</html>