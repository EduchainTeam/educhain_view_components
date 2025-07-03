import TomSelect from "tom-select";

import patchScroll from "educhain_view_components/tom-select/plugins/patch_scroll";
import stashOnSearch from "educhain_view_components/tom-select/plugins/stash_on_search";
import remoteWithPagination from "educhain_view_components/tom-select/plugins/remote_with_pagination";

TomSelect.define("patch_scroll", patchScroll);
TomSelect.define("stash_on_search", stashOnSearch);
TomSelect.define("remote_with_pagination", remoteWithPagination);

export default TomSelect;
