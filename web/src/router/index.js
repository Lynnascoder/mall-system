import {createRouter, createWebHistory} from 'vue-router'
import FrontLayout from "@/views/layout/FrontLayout.vue";
import AdminLayout from "@/views/layout/AdminLayout.vue";

const router = createRouter({
    history: createWebHistory(),
    routes: getRoutes()
})

function getRoutes() {
    let defaultRoutes = [
        {
            path: '/',
            name: 'front',
            component: FrontLayout,
            redirect: "/index",
            children: [{
                path: "index",
                name: "index",
                component: () =>
                    import ('../views/front/Index.vue')
            }, {
                path: "editCurrentUser",
                name: "editCurrentUser",
                component: () =>
                    import ('../views/EditCurrentUser.vue')
            }, {
                path: "editPassword",
                name: "front-editPassword",
                component: () =>
                    import ('../views/EditPassword.vue')
            }, {
                path: "balanceInfo",
                name: "front-balanceInfo",
                component: () =>
                    import ('../views/BalanceInfo.vue')
            } ,{
                path: 'productList',
                name: 'front-productList',
                component: () => import('../views/front/ProductList.vue')
            }, {
                path: 'productDetails/:id',
                name: 'front-productDetails',
                component: () => import('../views/front/ProductDetails.vue')
            },
                {
                    path: 'productOrder',
                    name: 'front-ProductOrder',
                    component: () => import('../views/front/ProductOrder.vue')
                },

                {
                    path: 'shoppingCart',
                    name: 'front-shoppingCart',
                    component: () => import('../views/front/ShoppingCart.vue')
                },


                {
                path: 'personalCenter',
                name: 'front-personalCenter',
                component: () => import('../views/front/PersonalCenter.vue')
            },
            ]
        },
        {
            path: '/admin',
            name: 'admin',
            component: AdminLayout,
            redirect: "/admin/home",
            children: [{
                path: "home",
                name: "admin-home",
                component: () =>
                    import ('../views/admin/Home.vue')
            },
                {
                    path: 'editCurrentUser',
                    name: 'admin-editCurrentUser',
                    component: () =>
                        import ('../views/EditCurrentUser.vue')
                },
                {
                    path: 'editPassword',
                    name: 'admin-editPassword',
                    component: () =>
                        import ('../views/EditPassword.vue')
                },
                {
                    path: 'admin',
                    name: 'Admin',
                    component: () =>
                        import ('../views/admin/AdminManage.vue')
                },
                {
                    path: 'user',
                    name: 'admin-user',
                    component: () =>
                        import ('../views/admin/UserManage.vue')
                }
                ,
                {
                    path: 'shop',
                    name: 'admin-shop',
                    component: () =>
                        import ('../views/admin/ShopManage.vue')
                }
                ,
                {
                    path: 'productType',
                    name: 'admin-productType',
                    component: () =>
                        import ('../views/admin/ProductTypeManage.vue')
                }
                ,
                {
                    path: 'product',
                    name: 'admin-product',
                    component: () =>
                        import ('../views/admin/ProductManage.vue')
                }
                ,
                {
                    path: 'productCollect',
                    name: 'admin-productCollect',
                    component: () =>
                        import ('../views/admin/ProductCollectManage.vue')
                }
                ,
                {
                    path: 'productBrowsingHistory',
                    name: 'admin-productBrowsingHistory',
                    component: () =>
                        import ('../views/admin/ProductBrowsingHistoryManage.vue')
                }
                ,
                {
                    path: 'shippingAddress',
                    name: 'admin-shippingAddress',
                    component: () =>
                        import ('../views/admin/ShippingAddressManage.vue')
                }
                ,
                {
                    path: 'productOrder',
                    name: 'admin-productOrder',
                    component: () =>
                        import ('../views/admin/ProductOrderManage.vue')
                }
                ,
                {
                    path: 'productOrderEvaluate',
                    name: 'admin-productOrderEvaluate',
                    component: () =>
                        import ('../views/admin/ProductOrderEvaluateManage.vue')
                }
                ,
                {
                    path: 'shopCollect',
                    name: 'admin-shopCollect',
                    component: () =>
                        import ('../views/admin/ShopCollectManage.vue')
                }
                ,
                {
                    path: 'advertising',
                    name: 'admin-advertising',
                    component: () =>
                        import ('../views/admin/AdvertisingManage.vue')
                }
                ,
                {
                    path: 'slideshow',
                    name: 'admin-slideshow',
                    component: () =>
                        import ('../views/admin/SlideshowManage.vue')
                }


            ]
        },
        {
            path: "/login",
            name: "login",
            component: () =>
                import ('../views/Login.vue')
        }, {
            path: "/register",
            name: "register",
            component: () =>
                import ('../views/Register.vue')
        }];
    defaultRoutes.push({
        path: '/:pathMatch(.*)*',
        name: 'NotFound',
        meta: {
            name: ''
        },
        component: () => import ('../views/404.vue')
    })
    console.log('getDynamicRoutes', defaultRoutes)
    return defaultRoutes;
}

// ==================== 路由守卫 ====================
// 前台的公共页面（首页、商品列表、商品详情、登录、注册）游客可看，
// 下面这些个人相关页面必须先登录。
const AUTH_FRONT_PATHS = [
    '/editCurrentUser',
    '/editPassword',
    '/balanceInfo',
    '/shoppingCart',
    '/productOrder',
    '/personalCenter'
]

// 从 localStorage 里取当前登录人，解析失败返回 null，避免脏数据把路由卡死
function getCurrentUser() {
    try {
        return JSON.parse(localStorage.getItem('currentUser') || 'null')
    } catch (e) {
        return null
    }
}

function requiresAuth(path) {
    return path.startsWith('/admin') || AUTH_FRONT_PATHS.some(p => path.startsWith(p))
}

// 注意：这层守卫只是"体验层"，能挡住误操作，挡不住改代码的人。
// 真正的数据边界在后端 —— 拦截器校验 token，Service 按角色覆盖 userId / shopId。
router.beforeEach((to, from, next) => {
    const token = localStorage.getItem('token')
    const user = getCurrentUser()

    // 已经登录还去登录 / 注册页：按角色送回各自的首页
    if (to.path === '/login' || to.path === '/register') {
        if (!token) {
            next()
            return
        }
        next(user && user.type === 'ADMIN' ? '/admin' : '/index')
        return
    }

    // 公共页面直接放行
    if (!requiresAuth(to.path)) {
        next()
        return
    }

    // 没登录：带上原地址去登录页，登录成功后可以跳回来
    if (!token) {
        next({path: '/login', query: {redirect: to.fullPath}})
        return
    }

    // 后台只对管理员和店铺开放，普通用户踢回前台
    if (to.path.startsWith('/admin') && user && user.type !== 'ADMIN' && user.type !== 'SHOP') {
        next('/index')
        return
    }

    next()
})

export default router
