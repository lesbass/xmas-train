export const addKt = (a, b) => {
    return new Promise((resolve) => {
        setTimeout(() => {
            const fn = {}
            for (name in instance.exports) {
                if (name.startsWith("kfun:")) {
                    const fn_name = name.substring(6, name.indexOf("("));
                    fn[fn_name] = instance.exports[name];
                }
            }
            resolve(fn)
        }, 100)
    }).then(({add}) => add(a, b))
}