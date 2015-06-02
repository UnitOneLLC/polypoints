//
//  main.swift
//  polypoints
//
//  Created by Fred Hewett on 4/20/15.
//  Copyright (c) 2015 Frederick Hewett. All rights reserved.
//

import Foundation

let header:String = "shape_id,shape_pt_lat,shape_pt_lon,shape_pt_sequence"

struct RouteShape {
    let encoded: String
    let shapeId: String
}


let shapes: [RouteShape] = [
    RouteShape(
        encoded: "_kr|Fhd|mL`@|An\\bQtMlRbDxCbGBv|DuqBbmE_eD`t@sc@pZ{Mv]_HrEjD",
        shapeId: "SH_FAL_OB"
    ),
    RouteShape(
        encoded: "wyl|FtzinLlDjH`ViErXgSb^sg@`Uac@b]c|@|_@sgBxl@woDve@mm@p[gJ~d@wBn{@zK`SfJzErGxE~T",
        shapeId: "SH_WH_VH"
    ),
    RouteShape(
        encoded: "q|e}Fp}|kLbA_@hAyA~DiCzH{AhB_BdFqIpJmMhHiHlMMb]nFpWdGp[pRhh@fsArPlLzUvB`YdQh^~[j`R`d`@znAzwCz}E~`K",
        shapeId: "SH_HY_OB"
    ),
    RouteShape(
        encoded: "giy|FdwzrLxOas@hVwXtd@{Zvd@Q~oMnaApoGd_@zMaHt}@cjDlzFqlsAL{hCwR_iD}t@e{Fu{L_vj@q]apDr@qzCzMc|@bc@kp@tzAs{@xEjDdFtHr@mA",
        shapeId: "SH_QU_OB"
    ),
    RouteShape(
        encoded: "qyl|FvyinLfBvBjBPvV}FfVgSv^wv@l]soAbJck@z`@{~Cpc@qbCln@_uB|c@iw@xqA_r@hZoFvBr@",
        shapeId: "SH_WH_OB"
    ),
    RouteShape(
        encoded: "g|b}FhozoLuCw\\~gAqx@tsGwyEz[yThMaV`zH_h`@rQg\\tBgQm@_[v@cOhGmO|GkZ`i@}}@nd@ogAfaCw~Mtd@sv@hx@qd@pb@iRvP}CbB\\",
        shapeId: "SH_NB_OB")
]

func main() {
    println("\(header)")
    
    for s in shapes {
        let p: Polyline = Polyline(encodedPolyline: s.encoded, encodedLevels: nil)
        let c = p.coordinates
        for (var i=1; i <= c.count; ++i) {
            let point = c[i-1]
            println("\(s.shapeId),\(point.latitude),\(point.longitude),\(i)")
        }
    }
}




main()

