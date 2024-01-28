<script setup lang="ts">
import { ref, onMounted } from 'vue'
import Item from './components/Item.vue'
import Close from './components/Close.vue'
import Back from './components/Back.vue'

interface Item {
  label?: string,
  icon?: string,
  sub?: boolean,
  placeholder: boolean,
  items?: Item[],
  uniqueId?: number,
}

const state = ref(false);
const holdToShow = ref(false);
const openKey = ref('X');
const rootItems = ref<Item[]>([]);
const parentMenus = ref<Item[][]>([]);
const selectedSubMenu = ref<Record<number, Item>>({
  1: { placeholder: false },
  2: { placeholder: false },
  3: { placeholder: false },
  4: { placeholder: false },
  5: { placeholder: false },
  6: { placeholder: false }
});

onMounted(() => {
  // @ts-ignore
  fetch(`https://${GetParentResourceName()}/init`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify({}),
  }).then((res) => {
    return res.json();
  }).then((data) => {
    holdToShow.value = data.holdToShow;
    openKey.value = data.openKey;
    rootItems.value = data.items;
    selectedSubMenu.value = parseItems(data.items);
  });

  window.addEventListener('message', (e: any) => {
    let item = e.data;

    if (!item.action) return;

    switch (item.action) {
      case 'toggle':
        state.value = item.state;
        break;

      default:
        break;
    }
  });

  window.addEventListener('keyup', (e) => {
    if (e.key === 'Escape' || (e.key == openKey.value.toLocaleLowerCase()) && holdToShow.value) {
      close();
    }
  });
});

const close = () => {
  state.value = false;

  selectedSubMenu.value = parseItems(rootItems.value);
  parentMenus.value = [];

  // @ts-ignore
  fetch(`https://${GetParentResourceName()}/close`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify({}),
  });
}

const parseItems = (items: Item[]) => {
  let parsedItems: Record<number, Item> = {
    1: { placeholder: true },
    2: { placeholder: true },
    3: { placeholder: true },
    4: { placeholder: true },
    5: { placeholder: true },
    6: { placeholder: true }
  };

  for (let i = 0; i < items.length; i++) {
    parsedItems[i + 1] = items[i];
    parsedItems[i + 1].placeholder = items[i].placeholder || false;
  }

  return parsedItems;
}

const revertItems = (items: Record<number, Item>) => {
  let revertedItems: Item[] = [];
  for (let i = 0; i < Object.keys(items).length; i++) {
    revertedItems.push(items[i + 1]);
  }
  return revertedItems;
}

const execute = (item: any) => {
  if (item.sub) {
    if (item.items.length <= 0) return;

    parentMenus.value.push(revertItems(selectedSubMenu.value));

    selectedSubMenu.value = parseItems(item.items);

    return;
  };

  // @ts-ignore
  fetch(`https://${GetParentResourceName()}/execute`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify(item),
  });
}

const goBack = () => {
  if (parentMenus.value.length <= 0) return;

  selectedSubMenu.value = parseItems(parentMenus.value[parentMenus.value.length - 1]);

  parentMenus.value.pop();
}
</script>

<template>
  <Transition name="fade">
    <div class="container" v-if="state">
      <main>
        <div class="top">
          <Item :label="selectedSubMenu[1].label" :placeholder="selectedSubMenu[1].placeholder"
            :icon="selectedSubMenu[1].icon" @click="execute(selectedSubMenu[1])" />
          <Item :label="selectedSubMenu[2].label" :placeholder="selectedSubMenu[2].placeholder"
            :icon="selectedSubMenu[2].icon" @click="execute(selectedSubMenu[2])" />
        </div>

        <div class="middle">
          <Item :label="selectedSubMenu[3].label" :placeholder="selectedSubMenu[3].placeholder"
            :icon="selectedSubMenu[3].icon" @click="execute(selectedSubMenu[3])" />
          <Close @click="close" v-if="parentMenus.length <= 0" />
          <Back @click="goBack" v-else />
          <Item :label="selectedSubMenu[4].label" :placeholder="selectedSubMenu[4].placeholder"
            :icon="selectedSubMenu[4].icon" @click="execute(selectedSubMenu[4])" />
        </div>

        <div class="bottom">
          <Item :label="selectedSubMenu[5].label" :placeholder="selectedSubMenu[5].placeholder"
            :icon="selectedSubMenu[5].icon" @click="execute(selectedSubMenu[5])" />
          <Item :label="selectedSubMenu[6].label" :placeholder="selectedSubMenu[6].placeholder"
            :icon="selectedSubMenu[6].icon" @click="execute(selectedSubMenu[6])" />
        </div>
      </main>
    </div>
  </Transition>
</template>