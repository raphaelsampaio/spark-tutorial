#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pyspark.sql import SparkSession

file = "example.txt"  # Should be some file on your system
spark = SparkSession.builder.appName("app").getOrCreate()
data = spark.read.text(file).cache()

a_count = data.filter(data.value.contains('a')).count()
b_count = data.filter(data.value.contains('b')).count()

print("'a' count: %i, 'b' count: %i" % (a_count, b_count))

spark.stop()