const loadInstance = new Promise((resolve) => {
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
})

export const decryptKt = (a, b) => {
    return loadInstance.then(({decrypt}) => decrypt(a, b))
}

export const encryptKt = (a, b) => {
    return loadInstance.then(({encrypt}) => encrypt(a, b))
}