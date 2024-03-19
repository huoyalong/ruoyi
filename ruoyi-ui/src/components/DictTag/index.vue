<template>
  <div>
    <template v-for="(item, index) in options">
      <template v-if="values.includes(item.value)">
        <span
          v-if="(item.raw.listClass == 'default' || item.raw.listClass == '') && (item.raw.cssClass == '' || item.raw.cssClass == null)"
          :key="item.value"
          :index="index"
          :class="item.raw.cssClass"
<<<<<<< HEAD
          >{{ item.label + ' ' }}</span
=======
          >{{ item.label + " " }}</span
>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
        >
        <el-tag
          v-else
          :disable-transitions="true"
          :key="item.value"
          :index="index"
          :type="item.raw.listClass == 'primary' ? '' : item.raw.listClass"
          :class="item.raw.cssClass"
        >
<<<<<<< HEAD
          {{ item.label + ' ' }}
=======
          {{ item.label + " " }}
>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
        </el-tag>
      </template>
    </template>
    <template v-if="unmatch && showValue">
      {{ unmatchArray | handleArray }}
    </template>
  </div>
</template>

<script>
export default {
  name: "DictTag",
  props: {
    options: {
      type: Array,
      default: null,
    },
    value: [Number, String, Array],
    // 当未找到匹配的数据时，显示value
    showValue: {
      type: Boolean,
      default: true,
<<<<<<< HEAD
    },
    separator: {
      type: String,
      default: ","
=======
>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
    }
  },
  data() {
    return {
      unmatchArray: [], // 记录未匹配的项
    }
  },
  computed: {
    values() {
<<<<<<< HEAD
      if (this.value === null || typeof this.value === 'undefined' || this.value === '') return []
      return Array.isArray(this.value) ? this.value.map(item => '' + item) : String(this.value).split(this.separator)
    },
    unmatch() {
      this.unmatchArray = []
      // 没有value不显示
      if (this.value === null || typeof this.value === 'undefined' || this.value === '' || this.options.length === 0) return false
      // 传入值为数组
      let unmatch = false // 添加一个标志来判断是否有未匹配项
      this.values.forEach(item => {
        if (!this.options.some(v => v.value === item)) {
          this.unmatchArray.push(item)
          unmatch = true // 如果有未匹配项，将标志设置为true
        }
      })
      return unmatch // 返回标志的值
    },

  },
  filters: {
    handleArray(array) {
      if (array.length === 0) return '';
      return array.reduce((pre, cur) => {
        return pre + ' ' + cur;
      })
    },
=======
      if (this.value !== null && typeof this.value !== "undefined") {
        return Array.isArray(this.value) ? this.value : [String(this.value)];
      } else {
        return [];
      }
    },
    unmatch() {
      this.unmatchArray = [];
      if (this.value !== null && typeof this.value !== "undefined") {
        // 传入值为非数组
        if (!Array.isArray(this.value)) {
          if (this.options.some((v) => v.value == this.value)) return false;
          this.unmatchArray.push(this.value);
          return true;
        }
        // 传入值为Array
        this.value.forEach((item) => {
          if (!this.options.some((v) => v.value == item))
            this.unmatchArray.push(item);
        });
        return true;
      }
      // 没有value不显示
      return false;
    },
  },
  filters: {
    handleArray(array) {
      if (array.length === 0) return "";
      return array.reduce((pre, cur) => {
        return pre + " " + cur;
      })
    }
>>>>>>> 9de45e8c0a3f3bbe1a484d49088fca417a2ee0d8
  }
};
</script>
<style scoped>
.el-tag + .el-tag {
  margin-left: 10px;
}
</style>
