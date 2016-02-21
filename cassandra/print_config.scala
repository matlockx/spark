for(line <- sc.getConf.getAll) println(s"${line._1} = ${line._2}")
