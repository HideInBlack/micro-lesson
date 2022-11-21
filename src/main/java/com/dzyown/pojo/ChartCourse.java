package com.dzyown.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 图标统计实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChartCourse {
    private String name;
    private int value;
}
