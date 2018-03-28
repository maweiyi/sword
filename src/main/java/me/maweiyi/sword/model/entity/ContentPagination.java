package me.maweiyi.sword.model.entity;

import java.util.List;

/**
 * @author MWY
 * @date 3/28/18
 */
public class ContentPagination {

    /**
     * total : 30
     * row : [{"a":"1","b":"2","c":"3"}]
     */

    private Integer total;
    private List<Content> rows;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<Content> getRows() {
        return rows;
    }

    public void setRows(List<Content> rows) {
        this.rows = rows;
    }
}
