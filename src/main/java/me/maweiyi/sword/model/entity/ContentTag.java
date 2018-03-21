package me.maweiyi.sword.model.entity;

/**
 * @author MWY
 * @date 3/21/18
 */
public class ContentTag {

    private Integer id;
    private Integer tag_id;
    private Integer content_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTag_id() {
        return tag_id;
    }

    public void setTag_id(Integer tag_id) {
        this.tag_id = tag_id;
    }

    public Integer getContent_id() {
        return content_id;
    }

    public void setContent_id(Integer content_id) {
        this.content_id = content_id;
    }
}
